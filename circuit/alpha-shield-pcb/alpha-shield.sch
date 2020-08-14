EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 3
Title "PHYS 439 Alpha Experiment Arduino Shield"
Date "2020-07-27"
Rev "1.0a"
Comp "McGill University Physics Department"
Comment1 ""
Comment2 ""
Comment3 "Electronics Design Support Team"
Comment4 "Eamon Egan"
$EndDescr
NoConn ~ 1650 1700
Text Label 1550 1550 1    60   ~ 0
IOREF
Text Label 1200 1550 1    60   ~ 0
Vin
Text Label 1200 2800 0    60   ~ 0
A0
Text Label 1200 2900 0    60   ~ 0
A1
Text Label 1200 3000 0    60   ~ 0
A2
Text Label 1200 3100 0    60   ~ 0
A3
Text Label 1200 3200 0    60   ~ 0
A4
Text Label 1200 3300 0    60   ~ 0
A5
Text Label 1200 3400 0    60   ~ 0
A6
Text Label 1200 3500 0    60   ~ 0
A7
Text Label 1200 3750 0    60   ~ 0
A8
Text Label 1200 3850 0    60   ~ 0
A9
Text Label 1200 3950 0    60   ~ 0
A10
Text Label 1200 4050 0    60   ~ 0
A11
Text Label 1200 4150 0    60   ~ 0
DAC0(A12)
Text Label 1200 4250 0    60   ~ 0
DAC1(A13)
Text Label 1200 4350 0    60   ~ 0
A14
Text Label 1200 4450 0    60   ~ 0
A15
Text Label 2700 4450 0    60   ~ 0
21(SCL)
Text Label 2700 4350 0    60   ~ 0
20(SDA)
Text Label 2700 4250 0    60   ~ 0
19(Rx1)
Text Label 2700 4150 0    60   ~ 0
18(Tx1)
Text Label 2700 4050 0    60   ~ 0
17(Rx2)
Text Label 2700 3950 0    60   ~ 0
16(Tx2)
Text Label 2700 3850 0    60   ~ 0
15(Rx3)
Text Label 2700 3750 0    60   ~ 0
14(Tx3)
Text Label 2700 1900 0    60   ~ 0
13(**)
Text Label 2700 2000 0    60   ~ 0
12(**)
Text Label 2700 2100 0    60   ~ 0
11(**)
Text Label 2700 2200 0    60   ~ 0
10(**)
Text Label 2700 2300 0    60   ~ 0
9(**)
Text Label 2700 2400 0    60   ~ 0
8(**)
Text Label 2700 2800 0    60   ~ 0
7(**)
Text Label 2700 2900 0    60   ~ 0
6(**)
Text Label 2700 3000 0    60   ~ 0
5(**)
Text Label 2700 3100 0    60   ~ 0
4(**)
Text Label 2700 3200 0    60   ~ 0
3(**)
Text Label 2700 3300 0    60   ~ 0
2(**)
Text Label 2700 3400 0    60   ~ 0
1(Tx0)
Text Label 2700 3500 0    60   ~ 0
0(Rx0)
Text Label 2700 1600 0    60   ~ 0
SDA
Text Label 2700 1500 0    60   ~ 0
SCL
Text Label 2700 1700 0    60   ~ 0
AREF
Text Notes 675  925  0    60   ~ 0
Shield for Arduino Mega Rev 3
Text Notes 3000 1350 0    60   ~ 0
Holes
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D70B71
P 2900 1000
F 0 "P8" V 3000 1000 31  0000 C CNN
F 1 "CONN_01X01" V 3000 1000 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 2900 1000 50  0001 C CNN
F 3 "" H 2900 1000 50  0000 C CNN
	1    2900 1000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P10
U 1 1 56D70CE6
P 3100 1000
F 0 "P10" V 3200 1000 31  0000 C CNN
F 1 "CONN_01X01" V 3200 1000 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 3100 1000 50  0001 C CNN
F 3 "" H 3100 1000 50  0000 C CNN
	1    3100 1000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P11
U 1 1 56D70D2C
P 3200 1000
F 0 "P11" V 3300 1000 31  0000 C CNN
F 1 "CONN_01X01" V 3300 1000 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 3200 1000 50  0001 C CNN
F 3 "" H 3200 1000 50  0000 C CNN
	1    3200 1000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P13
U 1 1 56D711F0
P 3400 1000
F 0 "P13" V 3500 1000 31  0000 C CNN
F 1 "CONN_01X01" V 3500 1000 50  0001 C CNN
F 2 "Socket_Arduino_Mega:Arduino_1pin" H 3400 1000 50  0001 C CNN
F 3 "" H 3400 1000 50  0000 C CNN
	1    3400 1000
	0    -1   -1   0   
$EndComp
NoConn ~ 2900 1200
NoConn ~ 3000 1200
NoConn ~ 3100 1200
NoConn ~ 3200 1200
NoConn ~ 3300 1200
NoConn ~ 3400 1200
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D71773
P 1850 2000
F 0 "P1" H 1850 2400 50  0000 C CNN
F 1 "Power" V 1950 2000 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 1850 2000 50  0001 C CNN
F 3 "" H 1850 2000 50  0000 C CNN
	1    1850 2000
	1    0    0    -1  
$EndComp
Text Notes 1950 1700 0    60   ~ 0
1
$Comp
L power:+3V3 #PWR03
U 1 1 56D71AA9
P 1400 1550
F 0 "#PWR03" H 1400 1400 50  0001 C CNN
F 1 "+3.3V" V 1400 1800 50  0000 C CNN
F 2 "" H 1400 1550 50  0000 C CNN
F 3 "" H 1400 1550 50  0000 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
Text Label 900  1900 0    60   ~ 0
Reset
$Comp
L power:+5V #PWR02
U 1 1 56D71D10
P 1300 1400
F 0 "#PWR02" H 1300 1250 50  0001 C CNN
F 1 "+5V" V 1300 1600 50  0000 C CNN
F 2 "" H 1300 1400 50  0000 C CNN
F 3 "" H 1300 1400 50  0000 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D721E6
P 1550 2500
F 0 "#PWR04" H 1550 2250 50  0001 C CNN
F 1 "GND" H 1550 2350 50  0000 C CNN
F 2 "" H 1550 2500 50  0000 C CNN
F 3 "" H 1550 2500 50  0000 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 P5
U 1 1 56D72368
P 2250 1900
F 0 "P5" H 2250 2400 50  0000 C CNN
F 1 "PWM" V 2350 1900 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x10" H 2250 1900 50  0001 C CNN
F 3 "" H 2250 1900 50  0000 C CNN
	1    2250 1900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 56D72A3D
P 2550 2500
F 0 "#PWR05" H 2550 2250 50  0001 C CNN
F 1 "GND" H 2550 2350 50  0000 C CNN
F 2 "" H 2550 2500 50  0000 C CNN
F 3 "" H 2550 2500 50  0000 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P2
U 1 1 56D72F1C
P 1850 3100
F 0 "P2" H 1850 3500 50  0000 C CNN
F 1 "Analog" V 1950 3100 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0000 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P6
U 1 1 56D734D0
P 2250 3100
F 0 "P6" H 2250 3500 50  0000 C CNN
F 1 "PWM" V 2350 3100 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 2250 3100 50  0001 C CNN
F 3 "" H 2250 3100 50  0000 C CNN
	1    2250 3100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P3
U 1 1 56D73A0E
P 1850 4050
F 0 "P3" H 1850 4450 50  0000 C CNN
F 1 "Analog" V 1950 4050 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 1850 4050 50  0001 C CNN
F 3 "" H 1850 4050 50  0000 C CNN
	1    1850 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P7
U 1 1 56D73F2C
P 2250 4050
F 0 "P7" H 2250 4450 50  0000 C CNN
F 1 "Communication" V 2350 4050 50  0000 C CNN
F 2 "Socket_Arduino_Mega:Socket_Strip_Arduino_1x08" H 2250 4050 50  0001 C CNN
F 3 "" H 2250 4050 50  0000 C CNN
	1    2250 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 1550 1400 2000
Wire Wire Line
	1550 1800 1550 1550
Wire Wire Line
	1650 1800 1550 1800
Wire Notes Line
	2750 1350 2750 850 
Wire Notes Line
	3500 1350 2750 1350
Wire Notes Line
	2150 1000 2150 825 
Wire Notes Line
	650  1000 2150 1000
Wire Wire Line
	1400 2000 1650 2000
Wire Wire Line
	1300 1400 1300 2100
Wire Wire Line
	1300 2100 1650 2100
Wire Wire Line
	1650 2400 1200 2400
Wire Wire Line
	1200 2400 1200 1550
Wire Wire Line
	900  1900 1650 1900
Wire Wire Line
	1650 2200 1550 2200
Wire Wire Line
	1550 2200 1550 2300
Wire Wire Line
	1550 2300 1550 2500
Wire Wire Line
	1650 2300 1550 2300
Connection ~ 1550 2300
Wire Wire Line
	2450 1500 2700 1500
Wire Wire Line
	2700 1600 2450 1600
Wire Wire Line
	2450 1700 2700 1700
Wire Wire Line
	2450 1900 2700 1900
Wire Wire Line
	2700 2000 2450 2000
Wire Wire Line
	2450 2100 2700 2100
Wire Wire Line
	2450 2200 2700 2200
Wire Wire Line
	2700 2300 2450 2300
Wire Wire Line
	2450 2400 2700 2400
Wire Wire Line
	2550 2500 2550 1800
Wire Wire Line
	2550 1800 2450 1800
Wire Wire Line
	1650 2800 1200 2800
Wire Wire Line
	1200 2900 1650 2900
Wire Wire Line
	1650 3000 1200 3000
Wire Wire Line
	1200 3100 1650 3100
Wire Wire Line
	1650 3200 1200 3200
Wire Wire Line
	1200 3300 1650 3300
Wire Wire Line
	1650 3400 1200 3400
Wire Wire Line
	1200 3500 1650 3500
Wire Wire Line
	2700 2800 2450 2800
Wire Wire Line
	2450 2900 2700 2900
Wire Wire Line
	2700 3000 2450 3000
Wire Wire Line
	2450 3100 2700 3100
Wire Wire Line
	2700 3200 2450 3200
Wire Wire Line
	2450 3300 2700 3300
Wire Wire Line
	2700 3400 2450 3400
Wire Wire Line
	2450 3500 2700 3500
Wire Wire Line
	1650 3750 1200 3750
Wire Wire Line
	1200 3850 1650 3850
Wire Wire Line
	1650 3950 1200 3950
Wire Wire Line
	1200 4050 1650 4050
Wire Wire Line
	1650 4150 1200 4150
Wire Wire Line
	1200 4250 1650 4250
Wire Wire Line
	1650 4350 1200 4350
Wire Wire Line
	1200 4450 1650 4450
Wire Wire Line
	2700 3750 2450 3750
Wire Wire Line
	2450 3850 2700 3850
Wire Wire Line
	2700 3950 2450 3950
Wire Wire Line
	2450 4050 2700 4050
Wire Wire Line
	2700 4150 2450 4150
Wire Wire Line
	2450 4250 2700 4250
Wire Wire Line
	2700 4350 2450 4350
Wire Wire Line
	2450 4450 2700 4450
Wire Wire Line
	3900 3100 3300 3100
Wire Wire Line
	3900 3300 3300 3300
Wire Wire Line
	3900 4950 3300 4950
Wire Wire Line
	3900 5150 3300 5150
Text Label 3300 3100 0    60   ~ 0
5(**)
Text Label 3300 4950 0    60   ~ 0
6(**)
Text Label 3300 3300 0    60   ~ 0
DAC0(A12)
Text Label 3300 5150 0    60   ~ 0
DAC1(A13)
$Comp
L alpha-shield:AP0vv255x05 M?
U 1 1 5F0FDEF6
P 7950 2900
AR Path="/5F1ED63B/5F0FDEF6" Ref="M?"  Part="1" 
AR Path="/5F0FDEF6" Ref="M1"  Part="1" 
AR Path="/5F280317/5F0FDEF6" Ref="M?"  Part="1" 
F 0 "M1" H 7750 3365 50  0000 C CNN
F 1 "AP0vv255x05" H 7750 3274 50  0000 C CNN
F 2 "alpha-shield:ISEG_HV_MODULE" H 7600 2850 50  0001 C CNN
F 3 "" H 7600 2850 50  0001 C CNN
	1    7950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F0FDEFC
P 7100 2600
AR Path="/5F1ED63B/5F0FDEFC" Ref="#PWR?"  Part="1" 
AR Path="/5F0FDEFC" Ref="#PWR09"  Part="1" 
AR Path="/5F280317/5F0FDEFC" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 7100 2450 50  0001 C CNN
F 1 "+5V" H 7115 2773 50  0000 C CNN
F 2 "" H 7100 2600 50  0001 C CNN
F 3 "" H 7100 2600 50  0001 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 7200 2800
Wire Wire Line
	7200 2700 7100 2700
Wire Wire Line
	7100 2700 7100 2600
$Comp
L power:GND #PWR?
U 1 1 5F0FDF05
P 7100 3150
AR Path="/5F1ED63B/5F0FDF05" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F0FDF05" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F0FDF05" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F0FDF05" Ref="#PWR?"  Part="1" 
AR Path="/5F0FDF05" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 7100 2900 50  0001 C CNN
F 1 "GND" H 7105 2977 50  0000 C CNN
F 2 "" H 7100 3150 50  0001 C CNN
F 3 "" H 7100 3150 50  0001 C CNN
	1    7100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2900 7200 2900
$Comp
L power:GND #PWR?
U 1 1 5F0FDF10
P 8400 2800
AR Path="/5F1ED63B/5F0FDF10" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F0FDF10" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F0FDF10" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F0FDF10" Ref="#PWR?"  Part="1" 
AR Path="/5F0FDF10" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 8400 2550 50  0001 C CNN
F 1 "GND" H 8405 2627 50  0000 C CNN
F 2 "" H 8400 2800 50  0001 C CNN
F 3 "" H 8400 2800 50  0001 C CNN
	1    8400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2800 8400 2700
Wire Wire Line
	8400 2700 8300 2700
$Comp
L Device:R_US R1
U 1 1 5F13B8ED
P 4050 3100
F 0 "R1" V 4000 2900 50  0000 C CNN
F 1 "220k" V 4000 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 3090 50  0001 C CNN
F 3 "~" H 4050 3100 50  0001 C CNN
	1    4050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F13CA41
P 4050 3300
F 0 "R2" V 4000 3100 50  0000 C CNN
F 1 "DNP" V 4000 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 3290 50  0001 C CNN
F 3 "~" H 4050 3300 50  0001 C CNN
	1    4050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3100 4450 3100
Wire Wire Line
	4450 3100 4450 3200
Wire Wire Line
	4450 3300 4200 3300
Wire Wire Line
	4450 3200 4550 3200
Connection ~ 4450 3200
Wire Wire Line
	4450 3200 4450 3300
$Comp
L Device:R_US R6
U 1 1 5F14BA4C
P 4050 5150
F 0 "R6" V 4000 4950 50  0000 C CNN
F 1 "DNP" V 4000 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 5140 50  0001 C CNN
F 3 "~" H 4050 5150 50  0001 C CNN
	1    4050 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 4950 4450 4950
Wire Wire Line
	4450 4950 4450 5050
Wire Wire Line
	4450 5150 4200 5150
Wire Wire Line
	4450 5050 4550 5050
Connection ~ 4450 5050
Wire Wire Line
	4450 5050 4450 5150
$Comp
L alpha-shield:AP0vv255x05 M?
U 1 1 5F15EF18
P 7950 4750
AR Path="/5F1ED63B/5F15EF18" Ref="M?"  Part="1" 
AR Path="/5F15EF18" Ref="M2"  Part="1" 
AR Path="/5F280317/5F15EF18" Ref="M?"  Part="1" 
F 0 "M2" H 7750 5215 50  0000 C CNN
F 1 "AP0vv255x05 (DNP)" H 7750 5124 50  0000 C CNN
F 2 "alpha-shield:ISEG_HV_MODULE" H 7600 4700 50  0001 C CNN
F 3 "" H 7600 4700 50  0001 C CNN
	1    7950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F15EF22
P 7100 4450
AR Path="/5F1ED63B/5F15EF22" Ref="#PWR?"  Part="1" 
AR Path="/5F15EF22" Ref="#PWR011"  Part="1" 
AR Path="/5F280317/5F15EF22" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 7100 4300 50  0001 C CNN
F 1 "+5V" H 7115 4623 50  0000 C CNN
F 2 "" H 7100 4450 50  0001 C CNN
F 3 "" H 7100 4450 50  0001 C CNN
	1    7100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4550 7100 4550
Wire Wire Line
	7100 4550 7100 4450
Wire Wire Line
	6800 4750 7200 4750
Wire Wire Line
	7200 4850 7000 4850
Connection ~ 6800 4850
Wire Wire Line
	6800 4850 6800 4750
$Comp
L power:GND #PWR?
U 1 1 5F15EF3E
P 8400 4650
AR Path="/5F1ED63B/5F15EF3E" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F15EF3E" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F15EF3E" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F15EF3E" Ref="#PWR?"  Part="1" 
AR Path="/5F15EF3E" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 8400 4400 50  0001 C CNN
F 1 "GND" H 8405 4477 50  0000 C CNN
F 2 "" H 8400 4650 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4650 8400 4550
Wire Wire Line
	8400 4550 8300 4550
$Sheet
S 4550 2800 950  1100
U 5F1ED63B
F0 "Sheet5F1ED63A" 50
F1 "double_lpf.sch" 50
F2 "IN1" I L 4550 3200 50 
F3 "OUT1" I R 5500 3200 50 
F4 "IN2" I L 4550 3600 50 
F5 "OUT2" I R 5500 3450 50 
F6 "VCC" I L 4550 2900 50 
$EndSheet
Wire Wire Line
	6800 5000 6800 4850
$Comp
L power:GND #PWR?
U 1 1 5F15EF2F
P 6800 5000
AR Path="/5F1ED63B/5F15EF2F" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F15EF2F" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F15EF2F" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F15EF2F" Ref="#PWR?"  Part="1" 
AR Path="/5F15EF2F" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 6800 4750 50  0001 C CNN
F 1 "GND" H 6805 4827 50  0000 C CNN
F 2 "" H 6800 5000 50  0001 C CNN
F 3 "" H 6800 5000 50  0001 C CNN
	1    6800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5600 3200
Wire Wire Line
	5600 3200 5500 3200
Wire Wire Line
	5500 5050 5600 5050
Wire Wire Line
	5600 4650 7200 4650
Wire Wire Line
	5600 4650 5600 5050
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F234494
P 9850 3700
F 0 "J2" H 9930 3742 50  0000 L CNN
F 1 "Conn_01x03" H 9930 3651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 3700 50  0001 C CNN
F 3 "~" H 9850 3700 50  0001 C CNN
	1    9850 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5F234717
P 9850 5650
F 0 "J4" H 9930 5692 50  0000 L CNN
F 1 "DNP" H 9930 5601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 5650 50  0001 C CNN
F 3 "~" H 9850 5650 50  0001 C CNN
	1    9850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR07
U 1 1 5F23B66C
P 4400 2800
F 0 "#PWR07" H 4400 2650 50  0001 C CNN
F 1 "+24V" H 4415 2973 50  0000 C CNN
F 2 "" H 4400 2800 50  0001 C CNN
F 3 "" H 4400 2800 50  0001 C CNN
	1    4400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2900 4400 2900
Wire Wire Line
	4400 2900 4400 2800
$Comp
L power:+24V #PWR08
U 1 1 5F240EDC
P 4400 4650
F 0 "#PWR08" H 4400 4500 50  0001 C CNN
F 1 "+24V" H 4415 4823 50  0000 C CNN
F 2 "" H 4400 4650 50  0001 C CNN
F 3 "" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4750 4400 4750
Wire Wire Line
	4400 4750 4400 4650
$Comp
L power:+24V #PWR015
U 1 1 5F2465A0
P 9400 3500
F 0 "#PWR015" H 9400 3350 50  0001 C CNN
F 1 "+24V" H 9415 3673 50  0000 C CNN
F 2 "" H 9400 3500 50  0001 C CNN
F 3 "" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3600 9400 3600
Wire Wire Line
	9400 3600 9400 3500
$Comp
L power:+24V #PWR017
U 1 1 5F24BFF0
P 9400 5500
F 0 "#PWR017" H 9400 5350 50  0001 C CNN
F 1 "+24V" H 9415 5673 50  0000 C CNN
F 2 "" H 9400 5500 50  0001 C CNN
F 3 "" H 9400 5500 50  0001 C CNN
	1    9400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5550 9400 5550
Wire Wire Line
	9400 5550 9400 5500
$Comp
L power:GND #PWR?
U 1 1 5F2517CC
P 9400 3900
AR Path="/5F1ED63B/5F2517CC" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F2517CC" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F2517CC" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F2517CC" Ref="#PWR?"  Part="1" 
AR Path="/5F2517CC" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 9400 3650 50  0001 C CNN
F 1 "GND" H 9405 3727 50  0000 C CNN
F 2 "" H 9400 3900 50  0001 C CNN
F 3 "" H 9400 3900 50  0001 C CNN
	1    9400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3900 9400 3800
Wire Wire Line
	9400 3800 9650 3800
$Comp
L power:GND #PWR?
U 1 1 5F2572B6
P 9400 5850
AR Path="/5F1ED63B/5F2572B6" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F2572B6" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F2572B6" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F2572B6" Ref="#PWR?"  Part="1" 
AR Path="/5F2572B6" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 9400 5600 50  0001 C CNN
F 1 "GND" H 9405 5677 50  0000 C CNN
F 2 "" H 9400 5850 50  0001 C CNN
F 3 "" H 9400 5850 50  0001 C CNN
	1    9400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3450 5600 3450
Wire Wire Line
	5600 3450 5600 3700
Wire Wire Line
	5600 3700 9650 3700
Wire Wire Line
	5500 5300 5600 5300
Wire Wire Line
	5600 5300 5600 5650
Wire Wire Line
	3900 3500 3300 3500
Wire Wire Line
	3900 3700 3300 3700
Text Label 3300 3500 0    60   ~ 0
5(**)
$Comp
L Device:R_US R4
U 1 1 5F27F4D4
P 4050 3700
F 0 "R4" V 4000 3500 50  0000 C CNN
F 1 "100k" V 4000 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 3690 50  0001 C CNN
F 3 "~" H 4050 3700 50  0001 C CNN
	1    4050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3500 4450 3500
Wire Wire Line
	4450 3500 4450 3600
Wire Wire Line
	4450 3700 4200 3700
Wire Wire Line
	4450 3600 4550 3600
Connection ~ 4450 3600
Wire Wire Line
	4450 3600 4450 3700
Wire Wire Line
	3900 5350 3300 5350
Wire Wire Line
	3900 5550 3300 5550
Text Label 3300 5350 0    60   ~ 0
6(**)
$Comp
L Device:R_US R7
U 1 1 5F2A185A
P 4050 5350
F 0 "R7" V 4000 5150 50  0000 C CNN
F 1 "DNP" V 4000 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 5340 50  0001 C CNN
F 3 "~" H 4050 5350 50  0001 C CNN
	1    4050 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F2A1864
P 4050 5550
F 0 "R8" V 4000 5350 50  0000 C CNN
F 1 "DNP" V 4000 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 5540 50  0001 C CNN
F 3 "~" H 4050 5550 50  0001 C CNN
	1    4050 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 5350 4450 5350
Wire Wire Line
	4450 5350 4450 5450
Wire Wire Line
	4450 5550 4200 5550
Wire Wire Line
	4450 5450 4550 5450
Connection ~ 4450 5450
Wire Wire Line
	4450 5450 4450 5550
Text Label 3300 3700 0    60   ~ 0
9(**)
Text Label 3300 5550 0    60   ~ 0
10(**)
$Comp
L power:+24V #PWR06
U 1 1 5F340FF6
P 4600 1950
F 0 "#PWR06" H 4600 1800 50  0001 C CNN
F 1 "+24V" H 4615 2123 50  0000 C CNN
F 2 "" H 4600 1950 50  0001 C CNN
F 3 "" H 4600 1950 50  0001 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F34213B
P 3600 1950
F 0 "#PWR01" H 3600 1800 50  0001 C CNN
F 1 "+5V" H 3615 2123 50  0000 C CNN
F 2 "" H 3600 1950 50  0001 C CNN
F 3 "" H 3600 1950 50  0001 C CNN
	1    3600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D1
U 1 1 5F34301A
P 4100 2100
F 0 "D1" H 4100 1884 50  0000 C CNN
F 1 "DNP" H 4100 1975 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P3.81mm_Vertical_AnodeUp" H 4100 2100 50  0001 C CNN
F 3 "~" H 4100 2100 50  0001 C CNN
	1    4100 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 1950 3600 2100
Wire Wire Line
	3600 2100 3950 2100
Wire Wire Line
	4600 2100 4600 1950
Wire Wire Line
	4250 2100 4600 2100
Text Notes 3550 2350 0    50   ~ 0
Permits operation on 5V if 24V not present\n(can be replaced by a jumper)
$Comp
L Device:R_US R?
U 1 1 5F3A44DB
P 8650 3100
AR Path="/5F1ED63B/5F3A44DB" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F3A44DB" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F3A44DB" Ref="R?"  Part="1" 
AR Path="/5F280317/5F3A44DB" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F3A44DB" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F3A44DB" Ref="R?"  Part="1" 
AR Path="/5F3A44DB" Ref="R43"  Part="1" 
F 0 "R43" V 8445 3100 50  0000 C CNN
F 1 "10K" V 8536 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8690 3090 50  0001 C CNN
F 3 "~" H 8650 3100 50  0001 C CNN
	1    8650 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 3100 8300 3100
$Comp
L Device:D_Zener_ALT D?
U 1 1 5F3A44E6
P 9000 3300
AR Path="/5F1ED63B/5F3A44E6" Ref="D?"  Part="1" 
AR Path="/5F19B79F/5F3A44E6" Ref="D?"  Part="1" 
AR Path="/5F3A44E6" Ref="D6"  Part="1" 
F 0 "D6" V 9000 3379 50  0000 L CNN
F 1 "DNP" V 9100 3350 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P3.81mm_Vertical_AnodeUp" H 9000 3300 50  0001 C CNN
F 3 "~" H 9000 3300 50  0001 C CNN
	1    9000 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 3100 9000 3150
Wire Wire Line
	9000 3100 8800 3100
$Comp
L power:GND #PWR?
U 1 1 5F3A44F2
P 9000 3450
AR Path="/5F1ED63B/5F3A44F2" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F3A44F2" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F3A44F2" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F3A44F2" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F3A44F2" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F3A44F2" Ref="#PWR?"  Part="1" 
AR Path="/5F3A44F2" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 9000 3200 50  0001 C CNN
F 1 "GND" H 9005 3277 50  0000 C CNN
F 2 "" H 9000 3450 50  0001 C CNN
F 3 "" H 9000 3450 50  0001 C CNN
	1    9000 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F3B4B15
P 8650 4950
AR Path="/5F1ED63B/5F3B4B15" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F3B4B15" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F3B4B15" Ref="R?"  Part="1" 
AR Path="/5F280317/5F3B4B15" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F3B4B15" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F3B4B15" Ref="R?"  Part="1" 
AR Path="/5F3B4B15" Ref="R44"  Part="1" 
F 0 "R44" V 8445 4950 50  0000 C CNN
F 1 "DNP" V 8536 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8690 4940 50  0001 C CNN
F 3 "~" H 8650 4950 50  0001 C CNN
	1    8650 4950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D?
U 1 1 5F3B4B20
P 9000 5150
AR Path="/5F1ED63B/5F3B4B20" Ref="D?"  Part="1" 
AR Path="/5F19B79F/5F3B4B20" Ref="D?"  Part="1" 
AR Path="/5F3B4B20" Ref="D7"  Part="1" 
F 0 "D7" V 9000 5229 50  0000 L CNN
F 1 "DNP" V 9100 5250 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P3.81mm_Vertical_AnodeUp" H 9000 5150 50  0001 C CNN
F 3 "~" H 9000 5150 50  0001 C CNN
	1    9000 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 4950 9000 5000
Wire Wire Line
	9000 4950 8800 4950
$Comp
L power:GND #PWR?
U 1 1 5F3B4B2C
P 9000 5300
AR Path="/5F1ED63B/5F3B4B2C" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F3B4B2C" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F3B4B2C" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F3B4B2C" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F3B4B2C" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F3B4B2C" Ref="#PWR?"  Part="1" 
AR Path="/5F3B4B2C" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 9000 5050 50  0001 C CNN
F 1 "GND" H 9005 5127 50  0000 C CNN
F 2 "" H 9000 5300 50  0001 C CNN
F 3 "" H 9000 5300 50  0001 C CNN
	1    9000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3100 9650 3100
Connection ~ 9000 3100
Wire Wire Line
	9000 4950 9650 4950
Connection ~ 9000 4950
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5F40EC6F
P 9850 3100
F 0 "J1" H 9930 3092 50  0000 L CNN
F 1 "Conn_01x02" H 9930 3001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9850 3100 50  0001 C CNN
F 3 "~" H 9850 3100 50  0001 C CNN
	1    9850 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F40F7E6
P 9850 4950
F 0 "J3" H 9930 4942 50  0000 L CNN
F 1 "DNP" H 9930 4851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9850 4950 50  0001 C CNN
F 3 "~" H 9850 4950 50  0001 C CNN
	1    9850 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F416C01
P 9650 5150
AR Path="/5F1ED63B/5F416C01" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F416C01" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F416C01" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F416C01" Ref="#PWR?"  Part="1" 
AR Path="/5F416C01" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 9650 4900 50  0001 C CNN
F 1 "GND" H 9655 4977 50  0000 C CNN
F 2 "" H 9650 5150 50  0001 C CNN
F 3 "" H 9650 5150 50  0001 C CNN
	1    9650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5150 9650 5050
Wire Wire Line
	9650 3300 9650 3200
$Comp
L power:GND #PWR?
U 1 1 5F410635
P 9650 3300
AR Path="/5F1ED63B/5F410635" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F410635" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F410635" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F410635" Ref="#PWR?"  Part="1" 
AR Path="/5F410635" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 9650 3050 50  0001 C CNN
F 1 "GND" H 9655 3127 50  0000 C CNN
F 2 "" H 9650 3300 50  0001 C CNN
F 3 "" H 9650 3300 50  0001 C CNN
	1    9650 3300
	1    0    0    -1  
$EndComp
Text Notes 8800 3050 0    50   ~ 0
Zener limits bias voltage. Shown \nfor positive bias module. Reverse zener \nif bias is negative.
$Comp
L power:GND #PWR?
U 1 1 5F163A66
P 2450 6100
AR Path="/5F1ED63B/5F163A66" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F163A66" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F163A66" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F163A66" Ref="#PWR?"  Part="1" 
AR Path="/5F163A66" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 2450 5850 50  0001 C CNN
F 1 "GND" H 2455 5927 50  0000 C CNN
F 2 "" H 2450 6100 50  0001 C CNN
F 3 "" H 2450 6100 50  0001 C CNN
	1    2450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6100 2450 5800
Wire Wire Line
	2450 5600 2750 5600
$Comp
L power:+5V #PWR043
U 1 1 5F16FC42
P 2600 5350
F 0 "#PWR043" H 2600 5200 50  0001 C CNN
F 1 "+5V" H 2615 5523 50  0000 C CNN
F 2 "" H 2600 5350 50  0001 C CNN
F 3 "" H 2600 5350 50  0001 C CNN
	1    2600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5350 2600 5700
Wire Wire Line
	2600 5700 2750 5700
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5F18B6B1
P 2950 5700
F 0 "J5" H 3030 5742 50  0000 L CNN
F 1 "DNP" H 3030 5651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2950 5700 50  0001 C CNN
F 3 "~" H 2950 5700 50  0001 C CNN
	1    2950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5800 2450 5800
Connection ~ 2450 5800
Wire Wire Line
	2450 5800 2450 5600
Wire Wire Line
	2750 5900 2700 5900
Wire Wire Line
	2750 5500 1500 5500
Wire Wire Line
	1300 5350 800  5350
Text Label 800  5350 0    60   ~ 0
14(Tx3)
$Comp
L Device:R_US R5
U 1 1 5F14BA42
P 4050 4950
F 0 "R5" V 4000 4750 50  0000 C CNN
F 1 "R_US" V 4000 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 4940 50  0001 C CNN
F 3 "~" H 4050 4950 50  0001 C CNN
	1    4050 4950
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5F1D58D4
P 1500 5350
F 0 "JP1" H 1500 5463 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 1500 5464 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 1500 5350 50  0001 C CNN
F 3 "~" H 1500 5350 50  0001 C CNN
	1    1500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5350 2200 5350
Wire Wire Line
	1300 5750 800  5750
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 5F247500
P 1500 5750
F 0 "JP2" H 1500 5863 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 1500 5864 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 1500 5750 50  0001 C CNN
F 3 "~" H 1500 5750 50  0001 C CNN
	1    1500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5750 2200 5750
Text Label 800  5750 0    60   ~ 0
15(Rx3)
$Comp
L power:GND #PWR?
U 1 1 5F26B487
P 2450 7450
AR Path="/5F1ED63B/5F26B487" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F26B487" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F26B487" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F26B487" Ref="#PWR?"  Part="1" 
AR Path="/5F26B487" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 2450 7200 50  0001 C CNN
F 1 "GND" H 2455 7277 50  0000 C CNN
F 2 "" H 2450 7450 50  0001 C CNN
F 3 "" H 2450 7450 50  0001 C CNN
	1    2450 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7450 2450 7150
Wire Wire Line
	2450 6950 2750 6950
$Comp
L power:+5V #PWR044
U 1 1 5F26B493
P 2600 6700
F 0 "#PWR044" H 2600 6550 50  0001 C CNN
F 1 "+5V" H 2615 6873 50  0000 C CNN
F 2 "" H 2600 6700 50  0001 C CNN
F 3 "" H 2600 6700 50  0001 C CNN
	1    2600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6700 2600 7050
Wire Wire Line
	2600 7050 2750 7050
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5F26B49F
P 2950 7050
F 0 "J6" H 3030 7092 50  0000 L CNN
F 1 "Conn_01x05" H 3030 7001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2950 7050 50  0001 C CNN
F 3 "~" H 2950 7050 50  0001 C CNN
	1    2950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7150 2450 7150
Connection ~ 2450 7150
Wire Wire Line
	2450 7150 2450 6950
Wire Wire Line
	2750 7250 1500 7250
Wire Wire Line
	2750 6850 1500 6850
Wire Wire Line
	1300 6700 800  6700
$Comp
L Jumper:SolderJumper_3_Bridged12 JP3
U 1 1 5F26B4B0
P 1500 6700
F 0 "JP3" H 1500 6813 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 1500 6814 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 1500 6700 50  0001 C CNN
F 3 "~" H 1500 6700 50  0001 C CNN
	1    1500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6700 2200 6700
Wire Wire Line
	1300 7100 800  7100
$Comp
L Jumper:SolderJumper_3_Bridged12 JP4
U 1 1 5F26B4BC
P 1500 7100
F 0 "JP4" H 1500 7213 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 1500 7214 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 1500 7100 50  0001 C CNN
F 3 "~" H 1500 7100 50  0001 C CNN
	1    1500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7100 2200 7100
Text Label 800  6700 0    60   ~ 0
20(SDA)
Text Label 800  7100 0    60   ~ 0
21(SCL)
Text Label 1950 5350 0    60   ~ 0
3(**)
Text Label 1950 5750 0    60   ~ 0
2(**)
Text Label 2000 6700 0    60   ~ 0
3(**)
Text Label 2000 7100 0    60   ~ 0
2(**)
Text Notes 8800 4900 0    50   ~ 0
Zener limits bias voltage. Shown \nfor positive bias module. Reverse zener \nif bias is negative.
$Comp
L Device:R_US R3
U 1 1 5F27F4CA
P 4050 3500
F 0 "R3" V 4000 3300 50  0000 C CNN
F 1 "DNP" V 4000 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4090 3490 50  0001 C CNN
F 3 "~" H 4050 3500 50  0001 C CNN
	1    4050 3500
	0    1    1    0   
$EndComp
Wire Notes Line style solid
	10450 500  10450 2300
Wire Notes Line style solid
	10450 2300 5950 2300
Wire Notes Line style solid
	5950 2300 5950 500 
Wire Notes Line style solid
	5950 700  10450 700 
Wire Notes Line style solid
	5950 900  10450 900 
Wire Notes Line style solid
	5950 1100 10450 1100
Wire Notes Line style solid
	5950 1300 10450 1300
Wire Notes Line style solid
	5950 1500 10450 1500
Wire Notes Line style solid
	5950 1700 10450 1700
Wire Notes Line style solid
	5950 1900 10450 1900
Wire Notes Line style solid
	5950 2100 10450 2100
Wire Notes Line style solid
	6275 2300 6275 500 
Wire Notes Line style solid
	6875 2300 6875 500 
Wire Notes Line style solid
	7550 2300 7550 500 
Wire Notes Line style solid
	5950 500  10450 500 
Text Notes 6000 2050 0    50   ~ 0
1.0     2020-07-27  E. Egan          Initial release, PCB rev 1.0 (no board mods shown)
Text Notes 6000 2250 0    50   ~ 10
Rev     Date           Name            Changes
Text Notes 6000 1850 0    50   ~ 0
1.0a    2020-07-27  E. Egan          rev 1.0 showing board mods
Wire Wire Line
	7200 4950 7100 4950
Wire Wire Line
	7200 3100 6900 3100
$Comp
L Device:R_US R37
U 1 1 5F3533EE
P 6750 3100
F 0 "R37" V 6700 2900 50  0000 C CNN
F 1 "1K" V 6700 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6790 3090 50  0001 C CNN
F 3 "~" H 6750 3100 50  0001 C CNN
	1    6750 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3100 6300 3100
Text Label 6300 3100 0    50   ~ 0
A0
$Sheet
S 4550 4650 950  1050
U 5F19B79F
F0 "sheet5F19B79F" 50
F1 "double_lpf.sch" 50
F2 "IN1" I L 4550 5050 50 
F3 "OUT1" I R 5500 5050 50 
F4 "IN2" I L 4550 5450 50 
F5 "OUT2" I R 5500 5300 50 
F6 "VCC" I L 4550 4750 50 
$EndSheet
Wire Wire Line
	7100 2900 7100 3150
Wire Wire Line
	7200 3000 5700 3000
Wire Wire Line
	5700 6150 2700 6150
Wire Wire Line
	2700 6150 2700 5900
Connection ~ 2700 5900
Wire Wire Line
	2700 5900 1500 5900
Text Notes 4500 6150 2    50   ~ 0
wire
Text Notes 3400 7450 2    50   ~ 0
Relay control
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5F3E531C
P 7100 5350
F 0 "J7" H 7180 5342 50  0000 L CNN
F 1 "DNP" H 7180 5251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7100 5350 50  0001 C CNN
F 3 "~" H 7100 5350 50  0001 C CNN
	1    7100 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5150 7100 4950
Wire Wire Line
	7000 5150 7000 4850
Connection ~ 7000 4850
Wire Wire Line
	7000 4850 6800 4850
Wire Notes Line
	6400 5600 7200 5600
Wire Notes Line
	7200 5600 7200 4800
Wire Wire Line
	9400 5850 9400 5750
Wire Wire Line
	9400 5750 9650 5750
Wire Wire Line
	5600 5650 9650 5650
Text Notes 7250 5600 0    50   ~ 0
READ2 (pressure gauge) input, 0-10V\nR45 added\nHeader pins \nplaced in M2-4,5
Wire Wire Line
	6700 5400 6700 5000
Wire Wire Line
	6700 5000 6800 5000
Connection ~ 6800 5000
Wire Notes Line
	7850 1750 8700 1750
Wire Notes Line
	8700 1750 8700 1850
Wire Notes Line
	8700 1850 7850 1850
Wire Notes Line
	7850 1850 7850 1750
Wire Notes Line
	6200 2825 7050 2825
Wire Notes Line
	7050 2825 7050 2975
Wire Notes Line
	7050 2975 6200 2975
Wire Notes Line
	6200 2975 6200 2825
Text Notes 6250 2975 0    50   ~ 0
pin 4 drilled out\nto isolate from GND
Wire Notes Line
	4175 6025 4625 6025
Wire Notes Line
	4625 6025 4625 6200
Wire Notes Line
	4175 6200 4625 6200
Wire Notes Line
	4175 6025 4175 6200
Wire Wire Line
	8500 4950 8300 4950
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F6535B9
P 13075 6925
F 0 "J?" H 13155 6917 50  0000 L CNN
F 1 "DNP" H 13155 6826 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 13075 6925 50  0001 C CNN
F 3 "~" H 13075 6925 50  0001 C CNN
	1    13075 6925
	0    1    1    0   
$EndComp
Connection ~ 7100 4950
Text Notes 6650 5400 2    50   ~ 0
wire
Wire Wire Line
	6450 4950 6300 4950
Connection ~ 6450 4950
Wire Wire Line
	6450 5050 6450 4950
Wire Wire Line
	6450 5400 6700 5400
Wire Wire Line
	6450 5350 6450 5400
$Comp
L Device:R_US R45
U 1 1 5F4C6AC7
P 6450 5200
F 0 "R45" H 6300 5150 50  0000 C CNN
F 1 "3.3K" H 6300 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6490 5190 50  0001 C CNN
F 3 "~" H 6450 5200 50  0001 C CNN
	1    6450 5200
	-1   0    0    1   
$EndComp
Wire Notes Line
	7200 4800 6400 4800
Wire Notes Line
	6400 4800 6400 5600
Wire Wire Line
	7100 4950 6450 4950
Wire Wire Line
	5700 3000 5700 6150
Text Label 5750 4950 0    50   ~ 0
A1
$Comp
L Device:R_US R38
U 1 1 5F353B5C
P 6150 4950
F 0 "R38" V 6100 4750 50  0000 C CNN
F 1 "10K" V 6100 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6190 4940 50  0001 C CNN
F 3 "~" H 6150 4950 50  0001 C CNN
	1    6150 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4950 5750 4950
$EndSCHEMATC
