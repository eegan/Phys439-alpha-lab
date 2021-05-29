#include "Arduino.h"
#include "Vrekrer_scpi_parser.h"
#include <math.h>

#define NELS(X) ((sizeof X) / (sizeof X[0]))
/*
 * TODO:
 * *RST, any other general SCPI commands?
 * calibration trim (in flash), trim setting commands - either factor + offset, or 2 point calibration
 * include soft limits (flash parameters)
 * figure out continuous polling
 * global off? it all comes back when it's turned on?
 * Debug port, do it nicer, include .cpp file?
 * Maybe get rid of String class usage? Or check for heap fragmentation (it's probably ok)
 * 
 * DONE:
 * Debug crash / disconnect
 */

 /*
  * Modifications for Brunner Lab
  * 
  * Expand bias and monitor to 12 channels
  * Comment out valve stuff
  * For now, just skip every other channel for HV option - fix this later
  * For now, hard-code maximum voltage - fix this later
  * Set AREF to external (after first making it work on internal 3.3V)
  * Turn off if analog readback is out of spec (tricky since it takes so long). (Could compute step function responses, and track readback levels accordingly!)
  */

  /*
   * Spec for readback tracking
   * goal is to implement an OCP or short circuit detector
   * poll as fast as convenient
   * timestamp on each reading
   * launch only when all is off
   * only ever refer to last reading
   * compute expected new value based on previous reading and previous setting
   * do all of this before updating with a new value
   * probably synchronize the loop with PWM updates
   * shut off instantly if more than a certain amount of error; this or we have to keep history or running average (versus just looking at last reading)
   * it will always come back from zero if reset, so the same situation applies on reactivating
   */

SCPI_Parser my_instrument;

const int n_channels = 12;

const int analogwrite_res_bits = 12;
const int analogwrite_maxcount = (1 << analogwrite_res_bits) - 1;

const int analogread_res_bits = 12;
const int analogread_maxcount = (1 << analogread_res_bits) - 1;

const float vcc = 3.3;                  // Arduino supply (PWM or ADC full scale)

const float bias_maxsetting = 200.0;   // maximum range, lower limit may be set
const float bias_maxvoltage = 2.5;     // corresponding control voltage
const float bias_gain = 1.0;           // amplifier gain (nominal, by component values)

// (pwm count) = (setting+offset)*factor
const float bias_factor = analogwrite_maxcount / vcc * bias_maxvoltage / bias_maxsetting / bias_gain;
const float bias_offset = 0.0;

// Hardware configuration: {first channel, second channel}
const int biasPins[] = {13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2};              // PWM1..12
const int biasControl = 22;                                                   // GLOBAL_OFF
const int analogPins[] = {A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11};  // MON1..12
const int vrefVCC = A7;
const int vrefGND = A4;

// state variables (settings)
float bias_settings[] = {0.0, 0.0};
bool biasState = false;

// Where to send debug output
// Note, this doesn't work for SCPI parser code, needs a bit of work to pass in the reference
// Or, just put a single place there, to change it
// Putting Serial2 as if it were /dev/null caused the program to hang after some debug characters were sent out on it... maybe it's flowcontrolled off?
//HardwareSerial &Dbg = Serial2;

//#define Port SerialUSB  // native port (not yet working)
//#define Port Serial       // programming port
HardwareSerial &Port = Serial;

void setup()
{
  setupSCPI();
  Port.begin(9600);
  while (!Port) ;
//  if (Dbg != Port)
//    Dbg.begin(9600);
  
  ConfigureHardware();
}

void loop()
{
  my_instrument.ProcessInput(Port, (char *)"\n");
}

void setupSCPI()
{
  // Example:  my_instrument.SetCommandTreeBase(F("SOURceS"))

  // ---------- IDENTIFY ----------
  my_instrument.RegisterCommand(F("*IDN?"), &Identify);

  // ---------- READ AND SET BIAS ----------
  my_instrument.RegisterCommand(F("BIAS:ON"), &biasOn);          // turning bias on
  my_instrument.RegisterCommand(F("BIAS:OFF"), &biasOff);        // turning bias off
  my_instrument.RegisterCommand(F("BIAS:ONOFF?"), &biasOnOff);   // checking if bias is on (1) or off (0)
  my_instrument.RegisterCommand(F("BIAS#"), &SetBias);            // set bias in V
  my_instrument.RegisterCommand(F("BIAS#?"), &GetBias);           // reads bias in V

  // ---------- DEBUG ----------
  my_instrument.RegisterCommand(F("*DEBUG?"), &Debug);
}

// Configure pins
void ConfigureHardware() 
{
  analogWriteResolution(analogwrite_res_bits);
  for (int i=0; i<n_channels; i++) {
    // bias voltage
    pinMode(biasPins[i], OUTPUT);
    analogWrite(biasPins[i], 0);
  }

  pinMode(biasControl, OUTPUT);
  digitalWrite(biasControl, !biasState);      // active low

  analogReadResolution(analogread_res_bits);
}

// SCPI commands
void Identify(SCPI_C commands, SCPI_P parameters, Stream& interface) {
  interface.println(F("McGill,PHYS 439 Alpha Experiment Apparatus,#00,v1.0"));
}

void Debug(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  my_instrument.PrintDebugInfo();
}

void SetBias(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  SetAnalogBias(commands, parameters, interface, biasPins, bias_settings, bias_maxsetting, bias_factor, bias_offset, 1);
}

// Writing to the appropriate bias channel (1)
void SetAnalogBias(SCPI_C commands, SCPI_P parameters, Stream& interface, const int pins[], float settings[], float maxsetting, float factor, float offset, int chan)
{
  float setting;
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    if (parameters.Size() > 0) {
      // TODO round by adding 0.5?
      setting = constrain(String(parameters[0]).toFloat(), 0.0, maxsetting);
      int count = constrain((setting+offset)*factor, 0, analogwrite_maxcount);
      analogWrite(pins[channel-1], count);
      settings[channel-1] = setting;
      #if 1
      Port.print("Pin: "); Port.print(pins[channel-1]); 
      Port.print(", setting: "); Port.print(setting);
      Port.print(", factor: "); Port.print(factor);
      Port.print(", count: "); Port.print(count); 
      Port.println("\n");
      #endif
    }
  }
}

void biasOn(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  biasState = true;
  digitalWrite(biasControl, !biasState);
}

void biasOff(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  biasState = false;
  digitalWrite(biasControl, !biasState);
}

void biasOnOff(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  interface.println(biasState);   // prints 1 for on, 0 for off
}

void SetAnalog(SCPI_C commands, SCPI_P parameters, Stream& interface, const int pins[], float settings[], float maxsetting, float factor, float offset)
{
  float setting;
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    if (parameters.Size() > 0) {
      // TODO round by adding 0.5?
      setting = constrain(String(parameters[0]).toFloat(), 0.0, maxsetting);
      int count = constrain((setting+offset)*factor, 0, analogwrite_maxcount);
      analogWrite(pins[channel-1], count);
      settings[channel-1] = setting;
      #if 0
      Port.print("Pin: "); Port.print(pins[channel-1]); 
      Port.print(", setting: "); Port.print(setting);
      Port.print(", factor: "); Port.print(factor);
      Port.print(", count: "); Port.print(count); 
      Port.println("\n");
      #endif
    }
  }
}

void GetBias(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  //Dbg.println("In GetBias");
  int channel = 1;
  if (channel >= 1 && channel <= 2) {
    interface.println(bias_settings[channel-1], 5);
  }
}

// Reads the counts measured at A0, A1, and A2
void ReadAnalog(SCPI_C commands, SCPI_P parameters, Stream& interface)
{
    int channel = getSuffix(commands);
    if (channel > NELS(analogPins)) return;
    
    int pin = analogPins[channel-1];
    analogRead(pin);    // throw away first reading
    delay(50);          // settling time
    
    // Take average of readings from pin
    // Analog pins already set to 12 bit resolution
    float sum = 0; 
    int n = 1000; 
    int i;
    for (i = 0; i < n; i++) sum += analogRead(pin);
    sum = sum/n;
    
    // convert ADC reading to voltage
    float voltage = sum; 
    interface.println(voltage, 5);
}

// Get the channel number from a command
int getSuffix(SCPI_C commands)
{
  // For simplicity no bad parameter check is done.
  String header = String(commands.Last());
  int suffix = -1;
  sscanf(header.c_str(),"%*[a-zA-Z]%u", &suffix);
  //Dbg.print("Suffix: "); Dbg.println(suffix);
  return suffix;
}
