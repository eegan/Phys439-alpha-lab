EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5F227B72
P 7550 3150
AR Path="/5F1ED63B/5F227B72" Ref="U?"  Part="2" 
AR Path="/5F21DB95/5F227B72" Ref="U1"  Part="2" 
AR Path="/5F22EEC2/5F227B72" Ref="U1"  Part="4" 
F 0 "U1" H 7550 3517 50  0000 C CNN
F 1 "LT1014" H 7550 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7500 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7600 3350 50  0001 C CNN
	4    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F227B78
P 5950 3050
AR Path="/5F1ED63B/5F227B78" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227B78" Ref="R5"  Part="1" 
AR Path="/5F22EEC2/5F227B78" Ref="R13"  Part="1" 
F 0 "R13" V 5745 3050 50  0000 C CNN
F 1 "R_US" V 5836 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5990 3040 50  0001 C CNN
F 3 "~" H 5950 3050 50  0001 C CNN
	1    5950 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F227B7E
P 6450 3050
AR Path="/5F1ED63B/5F227B7E" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227B7E" Ref="R6"  Part="1" 
AR Path="/5F22EEC2/5F227B7E" Ref="R14"  Part="1" 
F 0 "R14" V 6245 3050 50  0000 C CNN
F 1 "R_US" V 6336 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6490 3040 50  0001 C CNN
F 3 "~" H 6450 3050 50  0001 C CNN
	1    6450 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F227B84
P 6750 3500
AR Path="/5F1ED63B/5F227B84" Ref="C?"  Part="1" 
AR Path="/5F21DB95/5F227B84" Ref="C3"  Part="1" 
AR Path="/5F22EEC2/5F227B84" Ref="C7"  Part="1" 
F 0 "C7" H 6865 3546 50  0000 L CNN
F 1 "C" H 6865 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6788 3350 50  0001 C CNN
F 3 "~" H 6750 3500 50  0001 C CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F227B8A
P 7050 2550
AR Path="/5F1ED63B/5F227B8A" Ref="C?"  Part="1" 
AR Path="/5F21DB95/5F227B8A" Ref="C4"  Part="1" 
AR Path="/5F22EEC2/5F227B8A" Ref="C8"  Part="1" 
F 0 "C8" V 6798 2550 50  0000 C CNN
F 1 "C" V 6889 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7088 2400 50  0001 C CNN
F 3 "~" H 7050 2550 50  0001 C CNN
	1    7050 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3150 8000 3150
Wire Wire Line
	8000 3150 8000 2950
Wire Wire Line
	8000 2550 7200 2550
Wire Wire Line
	6200 2550 6200 3050
Wire Wire Line
	6200 3050 6300 3050
Wire Wire Line
	6600 3050 6750 3050
Wire Wire Line
	6900 2550 6200 2550
Wire Wire Line
	6100 3050 6200 3050
Connection ~ 6200 3050
Wire Wire Line
	6750 3350 6750 3050
Connection ~ 6750 3050
Wire Wire Line
	6750 3050 7250 3050
$Comp
L Device:R_US R?
U 1 1 5F227B9C
P 7600 3550
AR Path="/5F1ED63B/5F227B9C" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227B9C" Ref="R8"  Part="1" 
AR Path="/5F22EEC2/5F227B9C" Ref="R16"  Part="1" 
F 0 "R16" V 7395 3550 50  0000 C CNN
F 1 "R_US" V 7486 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7640 3540 50  0001 C CNN
F 3 "~" H 7600 3550 50  0001 C CNN
	1    7600 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F227BA2
P 7150 3800
AR Path="/5F1ED63B/5F227BA2" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227BA2" Ref="R7"  Part="1" 
AR Path="/5F22EEC2/5F227BA2" Ref="R15"  Part="1" 
F 0 "R15" H 7082 3754 50  0000 R CNN
F 1 "R_US" H 7082 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7190 3790 50  0001 C CNN
F 3 "~" H 7150 3800 50  0001 C CNN
	1    7150 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 3150 8000 3550
Wire Wire Line
	8000 3550 7750 3550
Wire Wire Line
	7450 3550 7150 3550
Connection ~ 8000 3150
Wire Wire Line
	7150 3250 7250 3250
Wire Wire Line
	7150 3250 7150 3550
Connection ~ 7150 3550
Wire Wire Line
	6750 3650 6750 4050
Wire Wire Line
	6750 4050 6950 4050
Wire Wire Line
	7150 4050 7150 3950
Wire Wire Line
	7150 3650 7150 3550
Wire Wire Line
	5650 3050 5700 3050
Wire Wire Line
	5050 3150 4850 3150
Wire Wire Line
	4850 3150 4850 3950
Wire Wire Line
	4850 3950 5200 3950
Wire Wire Line
	5700 3950 5700 3050
Connection ~ 5700 3050
Wire Wire Line
	5700 3050 5800 3050
$Comp
L Device:C C?
U 1 1 5F227BC0
P 3950 3250
AR Path="/5F1ED63B/5F227BC0" Ref="C?"  Part="1" 
AR Path="/5F21DB95/5F227BC0" Ref="C1"  Part="1" 
AR Path="/5F22EEC2/5F227BC0" Ref="C5"  Part="1" 
F 0 "C5" H 3835 3204 50  0000 R CNN
F 1 "C" H 3835 3295 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3988 3100 50  0001 C CNN
F 3 "~" H 3950 3250 50  0001 C CNN
	1    3950 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F227BC6
P 3300 2950
AR Path="/5F1ED63B/5F227BC6" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227BC6" Ref="R1"  Part="1" 
AR Path="/5F22EEC2/5F227BC6" Ref="R9"  Part="1" 
F 0 "R9" V 3095 2950 50  0000 C CNN
F 1 "R_US" V 3186 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3340 2940 50  0001 C CNN
F 3 "~" H 3300 2950 50  0001 C CNN
	1    3300 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2950 3150 2950
Wire Wire Line
	3450 2950 3600 2950
Wire Wire Line
	3950 3600 3950 3550
Wire Wire Line
	3950 3100 3950 2950
Connection ~ 3950 2950
Wire Wire Line
	3950 2950 5050 2950
$Comp
L power:GND #PWR?
U 1 1 5F227BD2
P 3950 3600
AR Path="/5F1ED63B/5F227BD2" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F227BD2" Ref="#PWR07"  Part="1" 
AR Path="/5F22EEC2/5F227BD2" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 3950 3350 50  0001 C CNN
F 1 "GND" H 3955 3427 50  0000 C CNN
F 2 "" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0001 C CNN
	1    3950 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F227BD8
P 6950 4050
AR Path="/5F1ED63B/5F227BD8" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F227BD8" Ref="#PWR010"  Part="1" 
AR Path="/5F22EEC2/5F227BD8" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6950 3800 50  0001 C CNN
F 1 "GND" H 6955 3877 50  0000 C CNN
F 2 "" H 6950 4050 50  0001 C CNN
F 3 "" H 6950 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
Connection ~ 6950 4050
Wire Wire Line
	6950 4050 7150 4050
$Comp
L Device:R_US R?
U 1 1 5F227BE0
P 3600 3250
AR Path="/5F1ED63B/5F227BE0" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227BE0" Ref="R2"  Part="1" 
AR Path="/5F22EEC2/5F227BE0" Ref="R10"  Part="1" 
F 0 "R10" H 3532 3204 50  0000 R CNN
F 1 "R_US" H 3532 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3640 3240 50  0001 C CNN
F 3 "~" H 3600 3250 50  0001 C CNN
	1    3600 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3100 3600 2950
Connection ~ 3600 2950
Wire Wire Line
	3600 2950 3950 2950
Wire Wire Line
	3600 3400 3600 3550
Wire Wire Line
	3600 3550 3950 3550
Connection ~ 3950 3550
Wire Wire Line
	3950 3550 3950 3400
$Comp
L Device:R_US R?
U 1 1 5F227BED
P 5350 3950
AR Path="/5F1ED63B/5F227BED" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227BED" Ref="R4"  Part="1" 
AR Path="/5F22EEC2/5F227BED" Ref="R12"  Part="1" 
F 0 "R12" V 5555 3950 50  0000 C CNN
F 1 "R_US" V 5464 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5390 3940 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
	1    5350 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 3950 5700 3950
$Comp
L Device:R_US R?
U 1 1 5F227BF4
P 4850 4600
AR Path="/5F1ED63B/5F227BF4" Ref="R?"  Part="1" 
AR Path="/5F21DB95/5F227BF4" Ref="R3"  Part="1" 
AR Path="/5F22EEC2/5F227BF4" Ref="R11"  Part="1" 
F 0 "R11" H 4918 4646 50  0000 L CNN
F 1 "R_US" H 4918 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4890 4590 50  0001 C CNN
F 3 "~" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F227BFA
P 4850 4750
AR Path="/5F1ED63B/5F227BFA" Ref="#PWR?"  Part="1" 
AR Path="/5F21DB95/5F227BFA" Ref="#PWR08"  Part="1" 
AR Path="/5F22EEC2/5F227BFA" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 4850 4500 50  0001 C CNN
F 1 "GND" H 4855 4577 50  0000 C CNN
F 2 "" H 4850 4750 50  0001 C CNN
F 3 "" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4450 4850 4300
Connection ~ 4850 3950
$Comp
L Device:C C?
U 1 1 5F227C02
P 5350 4300
AR Path="/5F1ED63B/5F227C02" Ref="C?"  Part="1" 
AR Path="/5F21DB95/5F227C02" Ref="C2"  Part="1" 
AR Path="/5F22EEC2/5F227C02" Ref="C6"  Part="1" 
F 0 "C6" V 5098 4300 50  0000 C CNN
F 1 "C" V 5189 4300 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5388 4150 50  0001 C CNN
F 3 "~" H 5350 4300 50  0001 C CNN
	1    5350 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4300 5200 4300
Wire Wire Line
	5700 4300 5700 3950
Wire Wire Line
	5500 4300 5700 4300
Connection ~ 4850 4300
Wire Wire Line
	4850 4300 4850 3950
Connection ~ 5700 3950
Text HLabel 2900 2950 0    50   Input ~ 0
PWM_IN
Text HLabel 8600 2950 2    50   Input ~ 0
OUT
Wire Wire Line
	8600 2950 8000 2950
Connection ~ 8000 2950
Wire Wire Line
	8000 2950 8000 2550
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5F227BB4
P 5350 3050
AR Path="/5F1ED63B/5F227BB4" Ref="U?"  Part="1" 
AR Path="/5F21DB95/5F227BB4" Ref="U1"  Part="1" 
AR Path="/5F22EEC2/5F227BB4" Ref="U1"  Part="3" 
F 0 "U1" H 5450 3450 50  0000 C CNN
F 1 "LT1014" H 5500 3350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5300 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5400 3250 50  0001 C CNN
	3    5350 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
