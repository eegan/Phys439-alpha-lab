#include "Arduino.h"
#include "Vrekrer_scpi_parser.h"
#include <math.h>

/*
 * TODO:
 * *RST, any other general SCPI commands?
 * calibration trim (in flash), trim setting commands - either factor + offset, or 2 point calibration
 * bias voltage readback, plus two 0-10V channels
 * include soft limits (flash parameters)
 * figure out continuous polling
 * global off? it all comes back when it's turned on?
 * Debug port, do it nicer, include .cpp file?
 * Maybe get rid of String class usage? Or check for heap fragmentation (it's probably ok)
 * 
 * DONE:
 * Debug crash / disconnect
 */

SCPI_Parser my_instrument;

const int n_channels = 2;

const int analogwrite_res_bits = 12;
const int analogwrite_maxcount = (1 << analogwrite_res_bits) - 1;

const int analogread_res_bits = 12;
const int analogread_maxcount = (1 << analogread_res_bits) - 1;

const float vcc = 3.3;                  // Arduino supply (PWM or ADC full scale)

const float valve_maxsetting = 100.0;   // maximum range (percent)
const float valve_maxvoltage = 20.0;    // corresponding control voltage
const float valve_gain = 6.783;         // amplifier gain (nominal, by component values)

// (pwm count) = (setting+offset)*factor
const float valve_factor = analogwrite_maxcount / vcc * valve_maxvoltage / valve_maxsetting / valve_gain;
const float valve_offset = 1.2;         // Vbe drop on emitter follower, plus whatever else

const float bias_maxsetting = 200.0;   // maximum range, lower limit may be set
const float bias_maxvoltage = 2.5;     // corresponding control voltage
const float bias_gain = 0.69299;       // amplifier gain (nominal, by component values)

// (pwm count) = (setting+offset)*factor
const float bias_factor = analogwrite_maxcount / vcc * bias_maxvoltage / bias_maxsetting / bias_gain;
const float bias_offset = 0.0;

// Hardware configuration: {first channel, second channel}
const int biasPins[] = {5, 6};
const int valvePins[] = {9, 10};
const int relayPins[] = {20, 21};     // RELAY1, RELAY2 are currently on the second (physical) channel, because of convenience of connectors
const int biasControl = 15;
const int analogPins[] = {A0, A1, A2};

// state variables (settings)
float bias_settings[] = {0.0, 0.0};
float valve_settings[] = {0.0, 0.0};
int relay_settings[] = {0, 0};
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
  //my_instrument.SetCommandTreeBase(F("SOURce#S"));              // example
  
  my_instrument.RegisterCommand(F("*IDN?"), &Identify);

  my_instrument.RegisterCommand(F("RELAY#"), &SetRelay);
  my_instrument.RegisterCommand(F("RELAY#?"), &GetRelay);
  
  my_instrument.RegisterCommand(F("BIAS"), &SetBias);
  my_instrument.RegisterCommand(F("BIAS?"), &GetBias);

  my_instrument.RegisterCommand(F("BIAS:ON"), &biasOn);
  my_instrument.RegisterCommand(F("BIAS:OFF"), &biasOff);

  my_instrument.RegisterCommand(F("VALVE"), &SetValve);
  my_instrument.RegisterCommand(F("VALVE?"), &GetValve);

  my_instrument.RegisterCommand(F("READ?"), &ReadAnalog);
  my_instrument.RegisterCommand(F("PRESSURE?"), &ReadAnalogPressure);

  my_instrument.RegisterCommand(F("*DEBUG?"), &Debug);
 
}

// Configure pins
void ConfigureHardware() 
{
  analogWriteResolution(analogwrite_res_bits);
  for (int i=0; i<n_channels; i++) {
    // relays
    pinMode(relayPins[i], OUTPUT);
    digitalWrite(relayPins[i], 1);            // active low
  
    // valves
    pinMode(valvePins[i], OUTPUT);
    analogWrite(valvePins[i], 0);
    
    // bias voltage
    pinMode(biasPins[i], OUTPUT);
    analogWrite(biasPins[i], 0);
  }

  pinMode(biasControl, OUTPUT);
  digitalWrite(biasControl, !biasState);      // active low

  analogReadResolution(analogread_res_bits);

  // apparently no configuration is needed to use the analog pins as inputs?
}


// SCPI commands
void Identify(SCPI_C commands, SCPI_P parameters, Stream& interface) {
  interface.println(F("McGill,PHYS 439 Alpha Experiment Apparatus,#00,v0.1"));
}

void Debug(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  my_instrument.PrintDebugInfo();
}

void SetBias(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  SetAnalog(commands, parameters, interface, biasPins, bias_settings, bias_maxsetting, bias_factor, bias_offset);
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

void SetValve(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  SetAnalog(commands, parameters, interface, valvePins, valve_settings, valve_maxsetting, valve_factor, valve_offset);
}

void SetRelay(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  SetDigital(commands, parameters, interface, relayPins, relay_settings);
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

// TODO: support ON / OFF ?
void SetDigital(SCPI_C commands, SCPI_P parameters, Stream& interface, const int pins[], int settings[])
{
  int setting;
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    if (parameters.Size() > 0) {
      setting = constrain(String(parameters[0]).toInt(), 0, 1);
      digitalWrite(relayPins[channel-1], !setting);    // active low
      settings[channel-1] = setting;      }
  }
}

void GetBias(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  //Dbg.println("In GetBias");
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    interface.println(bias_settings[channel-1]);
  }
}

void GetValve(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  //Dbg.println("In GetValve"); //EE
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    interface.println(valve_settings[channel-1]);
  }
}

void GetRelay(SCPI_C commands, SCPI_P parameters, Stream& interface) {
  //Dbg.println("In GetRelay"); //EE
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    interface.println(relay_settings[channel-1]);
  }  
}

void ReadAnalog(SCPI_C commands, SCPI_P parameters, Stream& interface)
{
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 3) {
    int pin = analogPins[channel-1];
    analogRead(pin);    // throw away first reading
    delay(50);          // settling time
    
    // Take average of 8 readings from pin
    // Analog pins already set to 12 bit resolution
    float sum = 0; 
    int n=8; 
    int i;
    for (i=0; i<n; i++) sum += analogRead(pin);
    sum = sum/n;
    
    // convert ADC reading to voltage
    float voltage = sum * (vcc / 4095.0) * 4; 
    interface.println(voltage);
  }  
}

// Same as ReadAnalog, except it will perform a voltage to pressure conversion
void ReadAnalogPressure(SCPI_C commands, SCPI_P parameters, Stream& interface)
{
  int channel = getSuffix(commands);
  
  if (channel >= 1 && channel <= 3) {
    int pin = analogPins[channel-1];
    analogRead(pin);    // throw away first reading
    delay(50);          // settling time
    
    // Take average of 8 readings from pin
    // Analog pins already set to 12 bit resolution
    float sum = 0; 
    int n=8; 
    int i;
    for (i=0; i<n; i++) sum += analogRead(pin);
    sum = sum/n;
    
    // Convert ADC reading to voltage
    // Get the voltage in V
    float voltage = sum * (vcc / 4095.0) * 4; 
    String unit = "Pa";
    float pressure = voltageConvert(unit, voltage);
    interface.println(pressure + ' ' + unit);
  }  
}

int getSuffix(SCPI_C commands)
{
  // For simplicity no bad parameter check is done.
  String header = String(commands.Last());
  int suffix = -1;
  sscanf(header.c_str(),"%*[a-zA-Z]%u", &suffix);
  //Dbg.print("Suffix: "); Dbg.println(suffix);
  return suffix;
}

// Converting the measured voltage reading from ADC to a pressure value
// Takes ADC output in Volts and the unit of pressure as input; can choose from mbar, mubar, Torr, mTorr, Pa, kPa
float voltageConvert(String unit, float volt)
{ 
  float pressure; 
  float constant; // Varies depending on the desired unit of pressure
  float exponent; 
  float gas_correction = 1.0; // For measurements below 1 mbar, for air
  
  if (unit.equals("mbar")){
    constant = 5.5;
  } else if (unit.equals("mubar")){
    constant = 2.5;
  } else if (unit.equals("Torr")){
    constant = 5.625;
  } else if (unit.equals("mTorr")){
    constant = 2.625;
  } else if (unit.equals("Pa")){
    constant = 3.5;
  } else if (unit.equals("kPa")){
    constant = 6.5;
  } else {
    // No constant was found
    return 0; 
  }

  exponent = volt - constant;
  pressure = pow(10, exponent)*gas_correction;
  
  return pressure;
}
