EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 3
Title "PHYS 439 Alpha Experiment Arduino Shield"
Date "2020-07-27"
Rev "1.0a"
Comp "McGill University Physics Department"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Eamon Egan"
$EndDescr
$Comp
L Amplifier_Operational:LM324 U1
U 2 1 5F26298B
P 7400 1950
AR Path="/5F1ED63B/5F26298B" Ref="U1"  Part="2" 
AR Path="/5F21DB95/5F26298B" Ref="U?"  Part="2" 
AR Path="/5F22EEC2/5F26298B" Ref="U?"  Part="4" 
AR Path="/5F280317/5F26298B" Ref="U?"  Part="4" 
AR Path="/5F18F480/5F26298B" Ref="U?"  Part="2" 
AR Path="/5F19B79F/5F26298B" Ref="U2"  Part="2" 
F 0 "U2" H 7400 2317 50  0000 C CNN
F 1 "LM324" H 7400 2226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7350 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7450 2150 50  0001 C CNN
	2    7400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 5F262991
P 5800 1850
AR Path="/5F1ED63B/5F262991" Ref="R15"  Part="1" 
AR Path="/5F21DB95/5F262991" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F262991" Ref="R?"  Part="1" 
AR Path="/5F280317/5F262991" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F262991" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F262991" Ref="R29"  Part="1" 
F 0 "R29" V 5595 1850 50  0000 C CNN
F 1 "100K" V 5686 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5840 1840 50  0001 C CNN
F 3 "~" H 5800 1850 50  0001 C CNN
	1    5800 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 5F262997
P 6300 1850
AR Path="/5F1ED63B/5F262997" Ref="R17"  Part="1" 
AR Path="/5F21DB95/5F262997" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F262997" Ref="R?"  Part="1" 
AR Path="/5F280317/5F262997" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F262997" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F262997" Ref="R31"  Part="1" 
F 0 "R31" V 6095 1850 50  0000 C CNN
F 1 "100K" V 6186 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6340 1840 50  0001 C CNN
F 3 "~" H 6300 1850 50  0001 C CNN
	1    6300 1850
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5F26299D
P 6600 2550
AR Path="/5F1ED63B/5F26299D" Ref="C6"  Part="1" 
AR Path="/5F21DB95/5F26299D" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F26299D" Ref="C?"  Part="1" 
AR Path="/5F280317/5F26299D" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F26299D" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F26299D" Ref="C15"  Part="1" 
F 0 "C15" H 6715 2596 50  0000 L CNN
F 1 "1µF" H 6715 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6638 2400 50  0001 C CNN
F 3 "~" H 6600 2550 50  0001 C CNN
	1    6600 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F2629A3
P 6900 1350
AR Path="/5F1ED63B/5F2629A3" Ref="C8"  Part="1" 
AR Path="/5F21DB95/5F2629A3" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F2629A3" Ref="C?"  Part="1" 
AR Path="/5F280317/5F2629A3" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F2629A3" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F2629A3" Ref="C17"  Part="1" 
F 0 "C17" V 6648 1350 50  0000 C CNN
F 1 "1µF" V 6739 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6938 1200 50  0001 C CNN
F 3 "~" H 6900 1350 50  0001 C CNN
	1    6900 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 1950 7850 1950
Wire Wire Line
	7850 1350 7050 1350
Wire Wire Line
	6050 1350 6050 1850
Wire Wire Line
	6050 1850 6150 1850
Wire Wire Line
	6450 1850 6600 1850
Wire Wire Line
	6750 1350 6050 1350
Wire Wire Line
	5950 1850 6050 1850
Connection ~ 6050 1850
Wire Wire Line
	6600 2400 6600 1850
Connection ~ 6600 1850
Wire Wire Line
	6600 1850 7100 1850
$Comp
L Device:R_US R21
U 1 1 5F2629B5
P 7450 2600
AR Path="/5F1ED63B/5F2629B5" Ref="R21"  Part="1" 
AR Path="/5F21DB95/5F2629B5" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F2629B5" Ref="R?"  Part="1" 
AR Path="/5F280317/5F2629B5" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F2629B5" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F2629B5" Ref="R35"  Part="1" 
F 0 "R35" V 7245 2600 50  0000 C CNN
F 1 "680" V 7336 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7490 2590 50  0001 C CNN
F 3 "~" H 7450 2600 50  0001 C CNN
	1    7450 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5F2629BB
P 7000 2850
AR Path="/5F1ED63B/5F2629BB" Ref="R19"  Part="1" 
AR Path="/5F21DB95/5F2629BB" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F2629BB" Ref="R?"  Part="1" 
AR Path="/5F280317/5F2629BB" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F2629BB" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F2629BB" Ref="R33"  Part="1" 
F 0 "R33" H 6932 2804 50  0000 R CNN
F 1 "1.1K" H 6932 2895 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7040 2840 50  0001 C CNN
F 3 "~" H 7000 2850 50  0001 C CNN
	1    7000 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 1950 7850 2600
Wire Wire Line
	7850 2600 7600 2600
Wire Wire Line
	7300 2600 7000 2600
Connection ~ 7850 1950
Wire Wire Line
	7000 2050 7100 2050
Wire Wire Line
	7000 2050 7000 2600
Connection ~ 7000 2600
Wire Wire Line
	6600 2700 6600 3100
Wire Wire Line
	6600 3100 6800 3100
Wire Wire Line
	7000 3100 7000 3000
Wire Wire Line
	7000 2700 7000 2600
Wire Wire Line
	5500 1850 5550 1850
Wire Wire Line
	4900 1950 4700 1950
Wire Wire Line
	4700 1950 4700 2550
Wire Wire Line
	4700 2550 5050 2550
Wire Wire Line
	5550 2550 5550 1850
Connection ~ 5550 1850
Wire Wire Line
	5550 1850 5650 1850
$Comp
L Device:C C1
U 1 1 5F2629D3
P 3800 2250
AR Path="/5F1ED63B/5F2629D3" Ref="C1"  Part="1" 
AR Path="/5F21DB95/5F2629D3" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F2629D3" Ref="C?"  Part="1" 
AR Path="/5F280317/5F2629D3" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F2629D3" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F2629D3" Ref="C10"  Part="1" 
F 0 "C10" H 3685 2204 50  0000 R CNN
F 1 "1µF" H 3685 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3838 2100 50  0001 C CNN
F 3 "~" H 3800 2250 50  0001 C CNN
	1    3800 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 2800 3800 2750
Wire Wire Line
	3800 2100 3800 1750
Connection ~ 3800 1750
Wire Wire Line
	3800 1750 4900 1750
$Comp
L power:GND #PWR019
U 1 1 5F2629E5
P 3800 2800
AR Path="/5F1ED63B/5F2629E5" Ref="#PWR019"  Part="1" 
AR Path="/5F21DB95/5F2629E5" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F2629E5" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F2629E5" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F2629E5" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F2629E5" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 3800 2550 50  0001 C CNN
F 1 "GND" H 3805 2627 50  0000 C CNN
F 2 "" H 3800 2800 50  0001 C CNN
F 3 "" H 3800 2800 50  0001 C CNN
	1    3800 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5F2629EB
P 6800 3100
AR Path="/5F1ED63B/5F2629EB" Ref="#PWR025"  Part="1" 
AR Path="/5F21DB95/5F2629EB" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F2629EB" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F2629EB" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F2629EB" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F2629EB" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6800 2850 50  0001 C CNN
F 1 "GND" H 6805 2927 50  0000 C CNN
F 2 "" H 6800 3100 50  0001 C CNN
F 3 "" H 6800 3100 50  0001 C CNN
	1    6800 3100
	1    0    0    -1  
$EndComp
Connection ~ 6800 3100
Wire Wire Line
	6800 3100 7000 3100
Wire Wire Line
	3450 1750 3800 1750
Wire Wire Line
	3450 2600 3450 2750
Wire Wire Line
	3450 2750 3800 2750
Connection ~ 3800 2750
Wire Wire Line
	3800 2750 3800 2400
$Comp
L Device:R_US R13
U 1 1 5F262A00
P 5200 2550
AR Path="/5F1ED63B/5F262A00" Ref="R13"  Part="1" 
AR Path="/5F21DB95/5F262A00" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F262A00" Ref="R?"  Part="1" 
AR Path="/5F280317/5F262A00" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F262A00" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F262A00" Ref="R27"  Part="1" 
F 0 "R27" V 5405 2550 50  0000 C CNN
F 1 "1K" V 5314 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5240 2540 50  0001 C CNN
F 3 "~" H 5200 2550 50  0001 C CNN
	1    5200 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 2550 5550 2550
$Comp
L Device:R_US R11
U 1 1 5F262A07
P 4700 3200
AR Path="/5F1ED63B/5F262A07" Ref="R11"  Part="1" 
AR Path="/5F21DB95/5F262A07" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F262A07" Ref="R?"  Part="1" 
AR Path="/5F280317/5F262A07" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F262A07" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F262A07" Ref="R25"  Part="1" 
F 0 "R25" H 4768 3246 50  0000 L CNN
F 1 "2.7K" H 4768 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4740 3190 50  0001 C CNN
F 3 "~" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5F262A0D
P 4700 3350
AR Path="/5F1ED63B/5F262A0D" Ref="#PWR022"  Part="1" 
AR Path="/5F21DB95/5F262A0D" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F262A0D" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F262A0D" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F262A0D" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F262A0D" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4700 3100 50  0001 C CNN
F 1 "GND" H 4705 3177 50  0000 C CNN
F 2 "" H 4700 3350 50  0001 C CNN
F 3 "" H 4700 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3050 4700 2900
Connection ~ 4700 2550
$Comp
L Device:C C4
U 1 1 5F262A15
P 5200 2900
AR Path="/5F1ED63B/5F262A15" Ref="C4"  Part="1" 
AR Path="/5F21DB95/5F262A15" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F262A15" Ref="C?"  Part="1" 
AR Path="/5F280317/5F262A15" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F262A15" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F262A15" Ref="C13"  Part="1" 
F 0 "C13" V 4948 2900 50  0000 C CNN
F 1 "DNP" V 5039 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5238 2750 50  0001 C CNN
F 3 "~" H 5200 2900 50  0001 C CNN
	1    5200 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2900 5050 2900
Wire Wire Line
	5550 2900 5550 2550
Wire Wire Line
	5350 2900 5550 2900
Connection ~ 4700 2900
Wire Wire Line
	4700 2900 4700 2550
Connection ~ 5550 2550
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 5F262A26
P 5200 1850
AR Path="/5F1ED63B/5F262A26" Ref="U1"  Part="1" 
AR Path="/5F21DB95/5F262A26" Ref="U?"  Part="1" 
AR Path="/5F22EEC2/5F262A26" Ref="U?"  Part="3" 
AR Path="/5F280317/5F262A26" Ref="U?"  Part="3" 
AR Path="/5F18F480/5F262A26" Ref="U?"  Part="1" 
AR Path="/5F19B79F/5F262A26" Ref="U2"  Part="1" 
F 0 "U2" H 5300 2250 50  0000 C CNN
F 1 "LM324" H 5350 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5150 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5250 2050 50  0001 C CNN
	1    5200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1350 7850 1750
Text HLabel 2750 1750 0    50   Input ~ 0
IN1
Connection ~ 3450 1750
Wire Wire Line
	3450 1750 3450 2300
Wire Wire Line
	2750 1750 3450 1750
Text HLabel 9850 1750 2    50   Input ~ 0
OUT1
Wire Wire Line
	9850 1750 9375 1750
Connection ~ 7850 1750
Wire Wire Line
	7850 1750 7850 1950
$Comp
L Amplifier_Operational:LM324 U1
U 4 1 5F10E936
P 7400 4600
AR Path="/5F1ED63B/5F10E936" Ref="U1"  Part="4" 
AR Path="/5F21DB95/5F10E936" Ref="U?"  Part="2" 
AR Path="/5F22EEC2/5F10E936" Ref="U?"  Part="4" 
AR Path="/5F280317/5F10E936" Ref="U?"  Part="4" 
AR Path="/5F18F480/5F10E936" Ref="U?"  Part="4" 
AR Path="/5F19B79F/5F10E936" Ref="U2"  Part="4" 
F 0 "U2" H 7400 4967 50  0000 C CNN
F 1 "LM324" H 7400 4876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7350 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7450 4800 50  0001 C CNN
	4    7400 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R16
U 1 1 5F10E940
P 5800 4500
AR Path="/5F1ED63B/5F10E940" Ref="R16"  Part="1" 
AR Path="/5F21DB95/5F10E940" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E940" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E940" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E940" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E940" Ref="R30"  Part="1" 
F 0 "R30" V 5595 4500 50  0000 C CNN
F 1 "100K" V 5686 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5840 4490 50  0001 C CNN
F 3 "~" H 5800 4500 50  0001 C CNN
	1    5800 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R18
U 1 1 5F10E94A
P 6300 4500
AR Path="/5F1ED63B/5F10E94A" Ref="R18"  Part="1" 
AR Path="/5F21DB95/5F10E94A" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E94A" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E94A" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E94A" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E94A" Ref="R32"  Part="1" 
F 0 "R32" V 6095 4500 50  0000 C CNN
F 1 "100K" V 6186 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6340 4490 50  0001 C CNN
F 3 "~" H 6300 4500 50  0001 C CNN
	1    6300 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5F10E954
P 6600 5200
AR Path="/5F1ED63B/5F10E954" Ref="C7"  Part="1" 
AR Path="/5F21DB95/5F10E954" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F10E954" Ref="C?"  Part="1" 
AR Path="/5F280317/5F10E954" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F10E954" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F10E954" Ref="C16"  Part="1" 
F 0 "C16" H 6715 5246 50  0000 L CNN
F 1 "1µF" H 6715 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6638 5050 50  0001 C CNN
F 3 "~" H 6600 5200 50  0001 C CNN
	1    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F10E95E
P 6900 4000
AR Path="/5F1ED63B/5F10E95E" Ref="C9"  Part="1" 
AR Path="/5F21DB95/5F10E95E" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F10E95E" Ref="C?"  Part="1" 
AR Path="/5F280317/5F10E95E" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F10E95E" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F10E95E" Ref="C18"  Part="1" 
F 0 "C18" V 6648 4000 50  0000 C CNN
F 1 "1µF" V 6739 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6938 3850 50  0001 C CNN
F 3 "~" H 6900 4000 50  0001 C CNN
	1    6900 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 4600 7850 4600
Wire Wire Line
	7850 4000 7050 4000
Wire Wire Line
	6050 4000 6050 4500
Wire Wire Line
	6050 4500 6150 4500
Wire Wire Line
	6450 4500 6600 4500
Wire Wire Line
	6750 4000 6050 4000
Wire Wire Line
	5950 4500 6050 4500
Connection ~ 6050 4500
Wire Wire Line
	6600 5050 6600 4500
Connection ~ 6600 4500
Wire Wire Line
	6600 4500 7100 4500
$Comp
L Device:R_US R22
U 1 1 5F10E973
P 7450 5250
AR Path="/5F1ED63B/5F10E973" Ref="R22"  Part="1" 
AR Path="/5F21DB95/5F10E973" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E973" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E973" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E973" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E973" Ref="R36"  Part="1" 
F 0 "R36" V 7245 5250 50  0000 C CNN
F 1 "680" V 7336 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7490 5240 50  0001 C CNN
F 3 "~" H 7450 5250 50  0001 C CNN
	1    7450 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5F10E97D
P 7000 5500
AR Path="/5F1ED63B/5F10E97D" Ref="R20"  Part="1" 
AR Path="/5F21DB95/5F10E97D" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E97D" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E97D" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E97D" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E97D" Ref="R34"  Part="1" 
F 0 "R34" H 6932 5454 50  0000 R CNN
F 1 "1.1K" H 6932 5545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7040 5490 50  0001 C CNN
F 3 "~" H 7000 5500 50  0001 C CNN
	1    7000 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 4600 7850 5250
Wire Wire Line
	7850 5250 7600 5250
Wire Wire Line
	7300 5250 7000 5250
Connection ~ 7850 4600
Wire Wire Line
	7000 4700 7100 4700
Wire Wire Line
	7000 4700 7000 5250
Connection ~ 7000 5250
Wire Wire Line
	6600 5350 6600 5750
Wire Wire Line
	6600 5750 6800 5750
Wire Wire Line
	7000 5750 7000 5650
Wire Wire Line
	7000 5350 7000 5250
Wire Wire Line
	5500 4500 5550 4500
Wire Wire Line
	4900 4600 4700 4600
Wire Wire Line
	4700 4600 4700 5200
Wire Wire Line
	4700 5200 5050 5200
Wire Wire Line
	5550 5200 5550 4500
Connection ~ 5550 4500
Wire Wire Line
	5550 4500 5650 4500
$Comp
L Device:C C2
U 1 1 5F10E999
P 3800 4900
AR Path="/5F1ED63B/5F10E999" Ref="C2"  Part="1" 
AR Path="/5F21DB95/5F10E999" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F10E999" Ref="C?"  Part="1" 
AR Path="/5F280317/5F10E999" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F10E999" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F10E999" Ref="C11"  Part="1" 
F 0 "C11" H 3685 4854 50  0000 R CNN
F 1 "1µF" H 3685 4945 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3838 4750 50  0001 C CNN
F 3 "~" H 3800 4900 50  0001 C CNN
	1    3800 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 5450 3800 5400
Wire Wire Line
	3800 4750 3800 4400
Connection ~ 3800 4400
Wire Wire Line
	3800 4400 4900 4400
$Comp
L power:GND #PWR020
U 1 1 5F10E9A7
P 3800 5450
AR Path="/5F1ED63B/5F10E9A7" Ref="#PWR020"  Part="1" 
AR Path="/5F21DB95/5F10E9A7" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F10E9A7" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F10E9A7" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F10E9A7" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F10E9A7" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 3800 5200 50  0001 C CNN
F 1 "GND" H 3805 5277 50  0000 C CNN
F 2 "" H 3800 5450 50  0001 C CNN
F 3 "" H 3800 5450 50  0001 C CNN
	1    3800 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5F10E9B1
P 6800 5750
AR Path="/5F1ED63B/5F10E9B1" Ref="#PWR026"  Part="1" 
AR Path="/5F21DB95/5F10E9B1" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F10E9B1" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F10E9B1" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F10E9B1" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F10E9B1" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6800 5500 50  0001 C CNN
F 1 "GND" H 6805 5577 50  0000 C CNN
F 2 "" H 6800 5750 50  0001 C CNN
F 3 "" H 6800 5750 50  0001 C CNN
	1    6800 5750
	1    0    0    -1  
$EndComp
Connection ~ 6800 5750
Wire Wire Line
	6800 5750 7000 5750
$Comp
L Device:R_US R10
U 1 1 5F10E9BD
P 3450 5100
AR Path="/5F1ED63B/5F10E9BD" Ref="R10"  Part="1" 
AR Path="/5F21DB95/5F10E9BD" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E9BD" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E9BD" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E9BD" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E9BD" Ref="R24"  Part="1" 
F 0 "R24" H 3382 5054 50  0000 R CNN
F 1 "DNP" H 3382 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3490 5090 50  0001 C CNN
F 3 "~" H 3450 5100 50  0001 C CNN
	1    3450 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 4400 3800 4400
Wire Wire Line
	3450 5250 3450 5400
Wire Wire Line
	3450 5400 3800 5400
Connection ~ 3800 5400
Wire Wire Line
	3800 5400 3800 5050
$Comp
L Device:R_US R14
U 1 1 5F10E9CC
P 5200 5200
AR Path="/5F1ED63B/5F10E9CC" Ref="R14"  Part="1" 
AR Path="/5F21DB95/5F10E9CC" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E9CC" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E9CC" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E9CC" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E9CC" Ref="R28"  Part="1" 
F 0 "R28" V 5405 5200 50  0000 C CNN
F 1 "1.5K (10K on U2 for mod)" V 5314 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5240 5190 50  0001 C CNN
F 3 "~" H 5200 5200 50  0001 C CNN
	1    5200 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 5200 5550 5200
$Comp
L Device:R_US R12
U 1 1 5F10E9D7
P 4700 5850
AR Path="/5F1ED63B/5F10E9D7" Ref="R12"  Part="1" 
AR Path="/5F21DB95/5F10E9D7" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F10E9D7" Ref="R?"  Part="1" 
AR Path="/5F280317/5F10E9D7" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F10E9D7" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F10E9D7" Ref="R26"  Part="1" 
F 0 "R26" H 4768 5896 50  0000 L CNN
F 1 "470 (3.3K on U2 for mod)" H 4768 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4740 5840 50  0001 C CNN
F 3 "~" H 4700 5850 50  0001 C CNN
	1    4700 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F10E9E1
P 4700 6000
AR Path="/5F1ED63B/5F10E9E1" Ref="#PWR023"  Part="1" 
AR Path="/5F21DB95/5F10E9E1" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F10E9E1" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F10E9E1" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F10E9E1" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F10E9E1" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4700 5750 50  0001 C CNN
F 1 "GND" H 4705 5827 50  0000 C CNN
F 2 "" H 4700 6000 50  0001 C CNN
F 3 "" H 4700 6000 50  0001 C CNN
	1    4700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5700 4700 5550
Connection ~ 4700 5200
$Comp
L Device:C C5
U 1 1 5F10E9ED
P 5200 5550
AR Path="/5F1ED63B/5F10E9ED" Ref="C5"  Part="1" 
AR Path="/5F21DB95/5F10E9ED" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F10E9ED" Ref="C?"  Part="1" 
AR Path="/5F280317/5F10E9ED" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F10E9ED" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F10E9ED" Ref="C14"  Part="1" 
F 0 "C14" V 4948 5550 50  0000 C CNN
F 1 "DNP" V 5039 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5238 5400 50  0001 C CNN
F 3 "~" H 5200 5550 50  0001 C CNN
	1    5200 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 5550 5050 5550
Wire Wire Line
	5550 5550 5550 5200
Wire Wire Line
	5350 5550 5550 5550
Connection ~ 4700 5550
Wire Wire Line
	4700 5550 4700 5500
Connection ~ 5550 5200
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 5F10E9FD
P 5200 4500
AR Path="/5F1ED63B/5F10E9FD" Ref="U1"  Part="3" 
AR Path="/5F21DB95/5F10E9FD" Ref="U?"  Part="1" 
AR Path="/5F22EEC2/5F10E9FD" Ref="U?"  Part="3" 
AR Path="/5F280317/5F10E9FD" Ref="U?"  Part="3" 
AR Path="/5F18F480/5F10E9FD" Ref="U?"  Part="3" 
AR Path="/5F19B79F/5F10E9FD" Ref="U2"  Part="3" 
F 0 "U2" H 5300 4900 50  0000 C CNN
F 1 "LM324" H 5350 4800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5150 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5250 4700 50  0001 C CNN
	3    5200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4000 7850 4400
Text HLabel 2750 4400 0    50   Input ~ 0
IN2
Connection ~ 3450 4400
Wire Wire Line
	3450 4400 3450 4950
Wire Wire Line
	2750 4400 3450 4400
Text HLabel 9850 4400 2    50   Input ~ 0
OUT2
Wire Wire Line
	9850 4400 8950 4400
Connection ~ 7850 4400
Wire Wire Line
	7850 4400 7850 4600
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 5F1809A5
P 5200 1850
AR Path="/5F1ED63B/5F1809A5" Ref="U1"  Part="5" 
AR Path="/5F21DB95/5F1809A5" Ref="U?"  Part="1" 
AR Path="/5F22EEC2/5F1809A5" Ref="U?"  Part="3" 
AR Path="/5F280317/5F1809A5" Ref="U?"  Part="3" 
AR Path="/5F18F480/5F1809A5" Ref="U?"  Part="5" 
AR Path="/5F19B79F/5F1809A5" Ref="U2"  Part="5" 
F 0 "U2" H 5300 2250 50  0001 C CNN
F 1 "LT1014" H 5350 2150 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5150 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5250 2050 50  0001 C CNN
	5    5200 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F185A35
P 5100 2150
AR Path="/5F1ED63B/5F185A35" Ref="#PWR024"  Part="1" 
AR Path="/5F21DB95/5F185A35" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F185A35" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F185A35" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F185A35" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F185A35" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5100 1900 50  0001 C CNN
F 1 "GND" H 4950 2050 50  0000 C CNN
F 2 "" H 5100 2150 50  0001 C CNN
F 3 "" H 5100 2150 50  0001 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1550 5100 1100
Wire Wire Line
	5100 1100 4700 1100
Text HLabel 2750 1100 0    50   Input ~ 0
VCC
$Comp
L Device:C C3
U 1 1 5F188E53
P 4700 1350
AR Path="/5F1ED63B/5F188E53" Ref="C3"  Part="1" 
AR Path="/5F21DB95/5F188E53" Ref="C?"  Part="1" 
AR Path="/5F22EEC2/5F188E53" Ref="C?"  Part="1" 
AR Path="/5F280317/5F188E53" Ref="C?"  Part="1" 
AR Path="/5F18F480/5F188E53" Ref="C?"  Part="1" 
AR Path="/5F19B79F/5F188E53" Ref="C12"  Part="1" 
F 0 "C12" H 4585 1304 50  0000 R CNN
F 1 "1uF" H 4585 1395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4738 1200 50  0001 C CNN
F 3 "~" H 4700 1350 50  0001 C CNN
	1    4700 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F18950D
P 4700 1500
AR Path="/5F1ED63B/5F18950D" Ref="#PWR021"  Part="1" 
AR Path="/5F21DB95/5F18950D" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F18950D" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F18950D" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F18950D" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F18950D" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 4700 1250 50  0001 C CNN
F 1 "GND" H 4705 1327 50  0000 C CNN
F 2 "" H 4700 1500 50  0001 C CNN
F 3 "" H 4700 1500 50  0001 C CNN
	1    4700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1200 4700 1100
Connection ~ 4700 1100
Wire Wire Line
	4700 1100 2750 1100
$Comp
L Device:R_US R39
U 1 1 5F337459
P 8300 1750
AR Path="/5F1ED63B/5F337459" Ref="R39"  Part="1" 
AR Path="/5F21DB95/5F337459" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F337459" Ref="R?"  Part="1" 
AR Path="/5F280317/5F337459" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F337459" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F337459" Ref="R41"  Part="1" 
F 0 "R41" V 8095 1750 50  0000 C CNN
F 1 "0" V 8186 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8340 1740 50  0001 C CNN
F 3 "~" H 8300 1750 50  0001 C CNN
	1    8300 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1750 7850 1750
$Comp
L Device:R_US R40
U 1 1 5F337B0E
P 8300 4400
AR Path="/5F1ED63B/5F337B0E" Ref="R40"  Part="1" 
AR Path="/5F21DB95/5F337B0E" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F337B0E" Ref="R?"  Part="1" 
AR Path="/5F280317/5F337B0E" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F337B0E" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F337B0E" Ref="R42"  Part="1" 
F 0 "R42" V 8095 4400 50  0000 C CNN
F 1 "DNP" V 8186 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8340 4390 50  0001 C CNN
F 3 "~" H 8300 4400 50  0001 C CNN
	1    8300 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 4400 8050 4400
$Comp
L Device:D_Zener_ALT D2
U 1 1 5F338AB6
P 9375 2000
AR Path="/5F1ED63B/5F338AB6" Ref="D2"  Part="1" 
AR Path="/5F19B79F/5F338AB6" Ref="D4"  Part="1" 
F 0 "D4" V 9329 2079 50  0000 L CNN
F 1 "BZX79C2V4 (2.4V)" V 9420 2079 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P3.81mm_Vertical_AnodeUp" H 9375 2000 50  0001 C CNN
F 3 "~" H 9375 2000 50  0001 C CNN
	1    9375 2000
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D3
U 1 1 5F339B35
P 8950 4650
AR Path="/5F1ED63B/5F339B35" Ref="D3"  Part="1" 
AR Path="/5F19B79F/5F339B35" Ref="D5"  Part="1" 
F 0 "D5" V 8904 4729 50  0000 L CNN
F 1 "DNP" V 8995 4729 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P3.81mm_Vertical_AnodeUp" H 8950 4650 50  0001 C CNN
F 3 "~" H 8950 4650 50  0001 C CNN
	1    8950 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	9375 1750 9375 1850
Connection ~ 9375 1750
Wire Wire Line
	9375 1750 8550 1750
Wire Wire Line
	8950 4400 8950 4475
Connection ~ 8950 4400
$Comp
L power:GND #PWR035
U 1 1 5F34014F
P 9375 2150
AR Path="/5F1ED63B/5F34014F" Ref="#PWR035"  Part="1" 
AR Path="/5F21DB95/5F34014F" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F34014F" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F34014F" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F34014F" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F34014F" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 9375 1900 50  0001 C CNN
F 1 "GND" H 9380 1977 50  0000 C CNN
F 2 "" H 9375 2150 50  0001 C CNN
F 3 "" H 9375 2150 50  0001 C CNN
	1    9375 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5F3404E1
P 8950 4800
AR Path="/5F1ED63B/5F3404E1" Ref="#PWR036"  Part="1" 
AR Path="/5F21DB95/5F3404E1" Ref="#PWR?"  Part="1" 
AR Path="/5F22EEC2/5F3404E1" Ref="#PWR?"  Part="1" 
AR Path="/5F280317/5F3404E1" Ref="#PWR?"  Part="1" 
AR Path="/5F18F480/5F3404E1" Ref="#PWR?"  Part="1" 
AR Path="/5F19B79F/5F3404E1" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 8950 4550 50  0001 C CNN
F 1 "GND" H 8955 4627 50  0000 C CNN
F 2 "" H 8950 4800 50  0001 C CNN
F 3 "" H 8950 4800 50  0001 C CNN
	1    8950 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5F2629F3
P 3450 2450
AR Path="/5F1ED63B/5F2629F3" Ref="R9"  Part="1" 
AR Path="/5F21DB95/5F2629F3" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F2629F3" Ref="R?"  Part="1" 
AR Path="/5F280317/5F2629F3" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F2629F3" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F2629F3" Ref="R23"  Part="1" 
F 0 "R23" H 3382 2404 50  0000 R CNN
F 1 "100K" H 3382 2495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3490 2440 50  0001 C CNN
F 3 "~" H 3450 2450 50  0001 C CNN
	1    3450 2450
	-1   0    0    1   
$EndComp
Text Notes 7400 2950 0    50   ~ 0
G = 1780 / 1100 = 1.618\n1/Q = 3 - G = 1.4 (for critical damping, Q = 0.707, using equal R, C values)
Text Notes 5000 4850 0    50   ~ 0
G = 2.5
Text Notes 4950 3800 0    50   ~ 0
Total G IN2 to OUT2 = 2.5 * 1.618 = 4.045
Text Notes 7400 5550 0    50   ~ 0
G = 1780 / 1100 = 1.618\n1/Q = 3 - G = 1.4 (for critical damping, Q = 0.707, using equal R, C values)
Text Notes 1300 4600 0    50   ~ 0
No attenuation
Text Notes 1300 1750 0    50   ~ 0
Rin = 220kΩ
Text Notes 1300 2000 0    50   ~ 0
Attenuation = 100kΩ / (100kΩ + 220kΩ) = 1/3.2
Text Notes 4950 900  0    50   ~ 0
Total gain IN1 to OUT1 = 1.618 / 3.2 = 0.5057
Text Notes 1300 4400 0    50   ~ 0
Rin = 100kΩ
Text Notes 4800 3450 0    50   ~ 0
Open if running with\n5V PWM (Due is 3.3V)
Text Notes 4800 6100 0    50   ~ 0
1K if running with\n5V PWM (Due is 3.3V)
Text Notes 3850 1500 0    50   ~ 0
0.1uF is probably\nadequate; 1uF used\nfor convenience
$Comp
L Transistor_BJT:BCX56 Q?
U 1 1 5F5E423E
P 8600 3875
AR Path="/5F5E423E" Ref="Q?"  Part="1" 
AR Path="/5F1ED63B/5F5E423E" Ref="Q1"  Part="1" 
AR Path="/5F19B79F/5F5E423E" Ref="Q2"  Part="1" 
F 0 "Q2" H 8791 3921 50  0000 L CNN
F 1 "BUW48" H 8791 3830 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 8800 3800 50  0001 L CIN
F 3 "http://cache.nxp.com/documents/data_sheet/BCP56_BCX56_BC56PA.pdf?pspll=1" H 8600 3875 50  0001 L CNN
	1    8600 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3875 8050 3875
Wire Wire Line
	8050 3875 8050 4400
Connection ~ 8050 4400
Wire Wire Line
	8050 4400 7850 4400
Wire Wire Line
	8950 4400 8450 4400
Wire Wire Line
	8700 4075 8700 4475
Wire Wire Line
	8700 4475 8950 4475
Connection ~ 8950 4475
Wire Wire Line
	8950 4475 8950 4500
$Comp
L power:+24V #PWR045
U 1 1 5F5F5C5E
P 8700 3575
AR Path="/5F1ED63B/5F5F5C5E" Ref="#PWR045"  Part="1" 
AR Path="/5F19B79F/5F5F5C5E" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 8700 3425 50  0001 C CNN
F 1 "+24V" H 8715 3748 50  0000 C CNN
F 2 "" H 8700 3575 50  0001 C CNN
F 3 "" H 8700 3575 50  0001 C CNN
	1    8700 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3575 8700 3675
Wire Notes Line
	7975 3600 9200 3600
Wire Notes Line
	9200 3600 9200 4500
Wire Notes Line
	9200 4500 7975 4500
Wire Notes Line
	7975 4500 7975 3600
Text Notes 8600 3550 2    50   ~ 0
Transistor added\n(top circuit only)
Text Notes 9225 4000 0    50   ~ 0
BUW48 is used because\nit was handy. Any medium\nor high power NPN is OK.
$Comp
L Device:R_US R46
U 1 1 5F60AF1B
P 8550 1950
AR Path="/5F1ED63B/5F60AF1B" Ref="R46"  Part="1" 
AR Path="/5F21DB95/5F60AF1B" Ref="R?"  Part="1" 
AR Path="/5F22EEC2/5F60AF1B" Ref="R?"  Part="1" 
AR Path="/5F280317/5F60AF1B" Ref="R?"  Part="1" 
AR Path="/5F18F480/5F60AF1B" Ref="R?"  Part="1" 
AR Path="/5F19B79F/5F60AF1B" Ref="R47"  Part="1" 
F 0 "R47" H 8482 1904 50  0000 R CNN
F 1 "100 1/4W" H 8482 1995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8590 1940 50  0001 C CNN
F 3 "~" H 8550 1950 50  0001 C CNN
	1    8550 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2100 8550 2150
Wire Wire Line
	9375 2150 8550 2150
Connection ~ 9375 2150
Wire Wire Line
	8550 1800 8550 1750
Connection ~ 8550 1750
Wire Wire Line
	8550 1750 8450 1750
Wire Notes Line
	8450 1600 8450 2250
Wire Notes Line
	8450 2250 9050 2250
Wire Notes Line
	9050 1600 8450 1600
Text Notes 8450 1550 0    50   ~ 0
Resistor added\n(top circuit only)
Wire Notes Line
	9050 2250 9050 1600
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F686B87
P 4325 7325
F 0 "J?" H 4405 7317 50  0000 L CNN
F 1 "DNP" H 4405 7226 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4325 7325 50  0001 C CNN
F 3 "~" H 4325 7325 50  0001 C CNN
	1    4325 7325
	0    1    1    0   
$EndComp
Wire Wire Line
	4225 7125 4225 2150
Wire Wire Line
	4225 2150 5100 2150
Connection ~ 5100 2150
Wire Wire Line
	4325 7125 5500 7125
Wire Wire Line
	5500 7125 5500 4500
Connection ~ 5500 4500
Wire Notes Line
	3725 6825 5600 6825
Wire Notes Line
	5600 6825 5600 7600
Wire Notes Line
	5600 7600 3725 7600
Wire Notes Line
	3725 7575 3725 6825
Text Notes 3725 7875 0    50   ~ 0
Header pins inserted in place of U2-8 and U2-11\n(bottom circuit only)
Wire Wire Line
	4700 5500 4400 5500
Wire Wire Line
	4400 5500 4400 6250
Wire Wire Line
	4400 6250 2750 6250
Connection ~ 4700 5500
Wire Wire Line
	4700 5500 4700 5200
Text Notes 3175 6225 2    50   ~ 0
A2  (wire)
Wire Notes Line
	2550 5875 2550 6550
Wire Notes Line
	2550 6550 3800 6550
Wire Notes Line
	3800 6550 3800 5875
Wire Notes Line
	3800 5875 2550 5875
$EndSCHEMATC
