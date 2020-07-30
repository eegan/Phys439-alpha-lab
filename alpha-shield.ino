#include "Arduino.h"
#include "Vrekrer_scpi_parser.h"

SCPI_Parser my_instrument;

/*
 * TODO:
 * Test current functionality (relay on/off, PWM settings)
 * *RST, any other general SCPI commands?
 * EEPROM calibration trim, trim setting commands
 * bias voltage readback
 * enhanced resolution on bias voltage (>8 bits)
 * global off? it all comes back when it's turned on?
 * Debug port, do it nicer, include .cpp file?
 * Maybe get rid of String class usage? Or check for heap fragmentation (it's probably ok)
 * 
 * 
 */

// analogwrite resolution
// not sure if we can get more than 8 using the simple Arduino library
// can get more if we mess with registers
// can get 12 if we use the ADC on the Due

const int n_channels = 2;

const int analogwrite_res_bits = 12;
const int analogwrite_maxcount = (1 << analogwrite_res_bits) - 1;

const float vcc = 5.0;              // Arduino supply

const float valve_maxpercent = 100.0;   // maximum range
const float valve_transfer = valve_maxpercent / vcc; // transfer function

const float bias_maxvolt = 200.0;   // maximum range, lower limit may be set
const float bias_transfer = bias_maxvolt / vcc;

// Hardware configuration: {first channel, second channel}
//const int biasPins[] = {DAC0, DAC1};
const int biasPins[] = {5, 6};
const int valvePins[] = {9, 10};
const int relayPins[] = {3, 2};

// state variables (settings)
float bias_settings[] = {0.0, 0.0};
float valve_settings[] = {0.0, 0.0};
int relay_settings[] = {0, 0};

// Where to send debug output
// Note, this doesn't work for SCPI parser code, needs a bit of work to pass in the reference
// Or, just put a single place there, to change it
//HardwareSerial Dbg = Serial2;
#define Dbg Serial2

void setup()
{
  setupSCPI();
  Serial.begin(9600);
  if (Dbg != Serial)
    Dbg.begin(9600);

  ConfigurePins();
}

void loop()
{
  my_instrument.ProcessInput(Serial, (char *)"\n");
}

void setupSCPI()
{
  //my_instrument.SetCommandTreeBase(F("SOURce#S"));              // example
  
  my_instrument.RegisterCommand(F("*IDN?"), &Identify);

  my_instrument.RegisterCommand(F("RELAY#"), &SetRelay);
  my_instrument.RegisterCommand(F("RELAY#?"), &GetRelay);
  
  my_instrument.RegisterCommand(F("BIAS"), &SetBias);
  my_instrument.RegisterCommand(F("BIAS?"), &GetBias);

  my_instrument.RegisterCommand(F("VALVE"), &SetValve);
  my_instrument.RegisterCommand(F("VALVE?"), &GetValve);

  my_instrument.RegisterCommand(F("*DEBUG?"), &Debug);
  
}

// Configure pins
void ConfigurePins() 
{
  analogWriteResolution(analogwrite_res_bits);
  for (int i=0; i<n_channels; i++) {
    // relays
    pinMode(relayPins[i], OUTPUT);
    digitalWrite(relayPins[i], 0);
  
    // valves
    pinMode(valvePins[i], OUTPUT);
    analogWrite(valvePins[i], 0);
    
    // bias voltage
    pinMode(biasPins[i], OUTPUT);
    analogWrite(biasPins[i], 0);
  }
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
  SetAnalog(commands, parameters, interface, biasPins, bias_settings, analogwrite_maxcount, bias_maxvolt);
}

void SetValve(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  SetAnalog(commands, parameters, interface, valvePins, valve_settings, analogwrite_maxcount, valve_maxpercent);
}

void SetRelay(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  SetDigital(commands, parameters, interface, relayPins, relay_settings);
}

void SetAnalog(SCPI_C commands, SCPI_P parameters, Stream& interface, const int pins[], float settings[], float maxcount, float maxsetting)
{
  float setting;
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    if (parameters.Size() > 0) {
      // TODO round by adding 0.5?
      setting = constrain(String(parameters[0]).toFloat(), 0.0, maxsetting);
      analogWrite(pins[channel-1], setting/maxsetting*maxcount);
      settings[channel-1] = setting;
      //Serial.print("Pin: "); Serial.print(biasPins[channel-1]); Serial.print(", setting: "); Serial.print(setting/maxsetting*maxcount); Serial.println("\n");
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
      digitalWrite(biasPins[channel-1], setting);
      settings[channel-1] = setting;      }
  }
}


void GetBias(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  Dbg.println("In GetBias");
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    interface.println(bias_settings[channel-1]);
  }
}

void GetValve(SCPI_C commands, SCPI_P parameters, Stream& interface) 
{
  Dbg.println("In GetValve"); //EE
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    interface.println(valve_settings[channel-1]);
  }
}

void GetRelay(SCPI_C commands, SCPI_P parameters, Stream& interface) {
  Dbg.println("In GetRelay"); //EE
  int channel = getSuffix(commands);
  if (channel >= 1 && channel <= 2) {
    interface.println(relay_settings[channel-1]);
  }  
}

int getSuffix(SCPI_C commands)
{
  // For simplicity no bad parameter check is done.
  String header = String(commands.Last());
  int suffix = -1;
  sscanf(header.c_str(),"%*[a-zA-Z]%u", &suffix);
  Dbg.print("Suffix: "); Dbg.println(suffix);
  return suffix;
}
