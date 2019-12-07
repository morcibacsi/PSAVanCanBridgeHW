EESchema Schematic File Version 4
LIBS:PSAVanCanBridge_v14-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PSA VAN-CAN Bridge"
Date ""
Rev "1.4"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TSS463:TSS463C U1
U 1 1 5D84D257
P 3500 1750
F 0 "U1" H 3500 2417 50  0000 C CNN
F 1 "TSS463C" H 3500 2326 50  0000 C CNN
F 2 "PSAVanCanBridge_v14:SO16L" H 3500 1750 50  0001 L CNN
F 3 "" H 3500 1750 50  0001 L CNN
	1    3500 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D84D534
P 1900 1650
F 0 "C1" V 1648 1650 50  0000 C CNN
F 1 "22pF" V 1739 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1938 1500 50  0001 C CNN
F 3 "~" H 1900 1650 50  0001 C CNN
	1    1900 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5D84D5CE
P 1900 1950
F 0 "C2" V 2150 1950 50  0000 C CNN
F 1 "22pF" V 2050 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1938 1800 50  0001 C CNN
F 3 "~" H 1900 1950 50  0001 C CNN
	1    1900 1950
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D84D63E
P 2200 1800
F 0 "Y1" V 2200 1750 50  0000 L CNN
F 1 "8MHz" V 1950 1750 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2200 1800 50  0001 C CNN
F 3 "~" H 2200 1800 50  0001 C CNN
	1    2200 1800
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5D84D73F
P 1550 1800
F 0 "#PWR0101" H 1550 1550 50  0001 C CNN
F 1 "GNDD" H 1554 1645 50  0000 C CNN
F 2 "" H 1550 1800 50  0001 C CNN
F 3 "" H 1550 1800 50  0001 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1650 2200 1650
Wire Wire Line
	2050 1950 2200 1950
Connection ~ 2200 1950
Connection ~ 2200 1650
Wire Wire Line
	1750 1650 1750 1800
Wire Wire Line
	1550 1800 1750 1800
Connection ~ 1750 1800
Wire Wire Line
	1750 1800 1750 1950
$Comp
L power:GNDD #PWR0102
U 1 1 5D84DB3B
P 2700 2000
F 0 "#PWR0102" H 2700 1750 50  0001 C CNN
F 1 "GNDD" H 2704 1845 50  0000 C CNN
F 2 "" H 2700 2000 50  0001 C CNN
F 3 "" H 2700 2000 50  0001 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1950 2700 1950
Wire Wire Line
	2700 1950 2700 2000
$Comp
L power:GNDD #PWR0103
U 1 1 5D84DE20
P 4500 1650
F 0 "#PWR0103" H 4500 1400 50  0001 C CNN
F 1 "GNDD" H 4600 1500 50  0000 R CNN
F 2 "" H 4500 1650 50  0001 C CNN
F 3 "" H 4500 1650 50  0001 C CNN
	1    4500 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 1650 4500 1650
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U2
U 1 1 5D84DFE9
P 5350 1950
F 0 "U2" H 5350 1950 50  0000 C CNN
F 1 "MCP2551-I-SN" H 5350 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5350 1450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 5350 1950 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 5D84E28E
P 5350 2800
F 0 "#PWR0104" H 5350 2550 50  0001 C CNN
F 1 "GNDD" H 5354 2645 50  0000 C CNN
F 2 "" H 5350 2800 50  0001 C CNN
F 3 "" H 5350 2800 50  0001 C CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
Text GLabel 5100 1250 0    50   Input ~ 0
5V
Wire Wire Line
	5350 1250 5350 1550
$Comp
L Device:R R6
U 1 1 5D84E9D5
P 4650 2300
F 0 "R6" H 4720 2346 50  0000 L CNN
F 1 "4.7K" H 4720 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4580 2300 50  0001 C CNN
F 3 "~" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2150 4850 2150
Wire Wire Line
	4650 2450 5350 2450
Wire Wire Line
	5350 2350 5350 2450
Connection ~ 5350 2450
Text GLabel 2450 1400 0    50   Input ~ 0
5V
Wire Wire Line
	2400 1650 2400 1750
Wire Wire Line
	2400 1750 2900 1750
Wire Wire Line
	2200 1650 2400 1650
Wire Wire Line
	2400 1850 2400 1950
Wire Wire Line
	2400 1850 2900 1850
Wire Wire Line
	2200 1950 2400 1950
Wire Wire Line
	4100 1850 4400 1850
Wire Wire Line
	4850 1750 4700 1750
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5D852874
P 10250 1600
F 0 "J1" H 10356 1978 50  0000 C CNN
F 1 "Conn_01x06_Male" H 10356 1887 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S06B-EH_1x06_P2.50mm_Horizontal" H 10250 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
	1    10250 1600
	-1   0    0    1   
$EndComp
Text Label 2300 1100 0    50   ~ 0
MISO
Text Label 2300 1200 0    50   ~ 0
CS_VAN
Text Label 2300 1000 0    50   ~ 0
MOSI
Wire Wire Line
	4100 1350 4200 1350
Wire Wire Line
	4200 1350 4200 1000
Text Label 2300 900  0    50   ~ 0
SCK
Wire Wire Line
	2900 1350 2900 1100
Wire Wire Line
	2800 1200 2800 1450
Wire Wire Line
	2800 1450 2900 1450
Wire Wire Line
	2300 1000 4200 1000
Wire Wire Line
	2300 1100 2900 1100
Wire Wire Line
	2300 1200 2800 1200
Wire Wire Line
	4300 1450 4300 900 
Wire Wire Line
	4100 1450 4300 1450
Wire Wire Line
	2300 900  4300 900 
Text Label 9450 1300 0    50   ~ 0
DATAB
Text Label 9450 1400 0    50   ~ 0
DATA
Text Label 9450 1500 0    50   ~ 0
CANL
Text Label 9450 1600 0    50   ~ 0
CANH
Text Label 9450 1800 0    50   ~ 0
+12V
Text Label 6900 2100 0    50   ~ 0
DATA
Text Label 6900 1800 0    50   ~ 0
DATAB
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U3
U 1 1 5D85C5BB
P 5400 4400
F 0 "U3" H 5400 4400 50  0000 C CNN
F 1 "MCP2551-I-SN" H 5350 4800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 5400 4400 50  0001 C CNN
	1    5400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0106
U 1 1 5D85C5C1
P 5400 5250
F 0 "#PWR0106" H 5400 5000 50  0001 C CNN
F 1 "GNDD" H 5404 5095 50  0000 C CNN
F 2 "" H 5400 5250 50  0001 C CNN
F 3 "" H 5400 5250 50  0001 C CNN
	1    5400 5250
	1    0    0    -1  
$EndComp
Text GLabel 5200 3700 0    50   Input ~ 0
5V
Wire Wire Line
	5400 3700 5400 4000
$Comp
L Device:R R5
U 1 1 5D85C5CB
P 4700 4750
F 0 "R5" H 4770 4796 50  0000 L CNN
F 1 "4.7K" H 4770 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4630 4750 50  0001 C CNN
F 3 "~" H 4700 4750 50  0001 C CNN
	1    4700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4600 4900 4600
Wire Wire Line
	4700 4900 5400 4900
Wire Wire Line
	5400 4800 5400 4900
Connection ~ 5400 4900
Wire Wire Line
	4150 4300 4900 4300
Wire Wire Line
	4900 4200 4150 4200
Text Label 6950 4250 0    50   ~ 0
CANH
Text Label 6950 4550 0    50   ~ 0
CANL
$Comp
L Regulator_Linear:LM7805_TO220 U6
U 1 1 5D86043A
P 9800 2400
F 0 "U6" H 9800 2642 50  0000 C CNN
F 1 "LM7805_TO220" H 9800 2551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 9800 2625 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 9800 2350 50  0001 C CNN
	1    9800 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5D8604FB
P 9300 2550
F 0 "C3" H 9050 2550 50  0000 L CNN
F 1 "0.33uF" H 9000 2450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 9338 2400 50  0001 C CNN
F 3 "~" H 9300 2550 50  0001 C CNN
	1    9300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5D86056B
P 10300 2550
F 0 "C4" H 10418 2596 50  0000 L CNN
F 1 "0.1uF" H 10418 2505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 10338 2400 50  0001 C CNN
F 3 "~" H 10300 2550 50  0001 C CNN
	1    10300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2400 10150 2400
Wire Wire Line
	9300 2400 9500 2400
Wire Wire Line
	9300 2700 9800 2700
Connection ~ 9800 2700
Wire Wire Line
	9800 2700 10300 2700
$Comp
L power:GNDD #PWR0107
U 1 1 5D8644B6
P 9800 2700
F 0 "#PWR0107" H 9800 2450 50  0001 C CNN
F 1 "GNDD" H 9804 2545 50  0000 C CNN
F 2 "" H 9800 2700 50  0001 C CNN
F 3 "" H 9800 2700 50  0001 C CNN
	1    9800 2700
	1    0    0    -1  
$EndComp
Text GLabel 10600 2400 2    50   Input ~ 0
5V
Wire Wire Line
	10300 2400 10600 2400
Connection ~ 10300 2400
Wire Wire Line
	9000 1700 9000 2700
Wire Wire Line
	9000 2700 9300 2700
Connection ~ 9300 2700
Wire Wire Line
	9300 1800 9300 2400
Wire Wire Line
	9300 1800 10050 1800
Connection ~ 9300 2400
$Comp
L Device:R R3
U 1 1 5D86A80C
P 6650 1950
F 0 "R3" H 6720 1996 50  0000 L CNN
F 1 "120" H 6720 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6580 1950 50  0001 C CNN
F 3 "~" H 6650 1950 50  0001 C CNN
	1    6650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1850 5950 1850
Wire Wire Line
	5950 1850 5950 1800
Wire Wire Line
	5850 2050 5950 2050
Wire Wire Line
	5950 2050 5950 2100
Wire Wire Line
	6650 1800 6900 1800
Connection ~ 6650 1800
Wire Wire Line
	6650 2100 6900 2100
Connection ~ 6650 2100
$Comp
L Device:R R4
U 1 1 5D86EDB4
P 6700 4400
F 0 "R4" H 6770 4446 50  0000 L CNN
F 1 "120" H 6770 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6630 4400 50  0001 C CNN
F 3 "~" H 6700 4400 50  0001 C CNN
	1    6700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4300 6000 4300
Wire Wire Line
	6000 4300 6000 4250
Wire Wire Line
	6950 4250 6700 4250
Connection ~ 6700 4250
Wire Wire Line
	6000 4500 6000 4550
Wire Wire Line
	5900 4500 6000 4500
Connection ~ 6700 4550
Wire Wire Line
	6700 4550 6950 4550
$Comp
L ESP32_shield:ESP32 U5
U 1 1 5D87A10E
P 2050 6450
F 0 "U5" H 2050 6600 50  0000 C CNN
F 1 "ESP32" H 2050 6450 50  0000 C CNN
F 2 "PSAVanCanBridge_v14:ESP32_shield" H 2050 6400 50  0001 C CNN
F 3 "" H 2050 6400 50  0001 C CNN
	1    2050 6450
	1    0    0    -1  
$EndComp
Text Label 5050 6450 0    50   ~ 0
5V
Text Label 3850 6450 2    50   ~ 0
3V3
$Comp
L power:GNDD #PWR0105
U 1 1 5D887563
P 4400 6850
F 0 "#PWR0105" H 4400 6600 50  0001 C CNN
F 1 "GNDD" H 4404 6695 50  0000 C CNN
F 2 "" H 4400 6850 50  0001 C CNN
F 3 "" H 4400 6850 50  0001 C CNN
	1    4400 6850
	1    0    0    -1  
$EndComp
Text Label 5050 6250 0    50   ~ 0
MISO
Wire Wire Line
	9450 1300 10050 1300
Wire Wire Line
	9450 1400 10050 1400
Wire Wire Line
	9450 1500 10050 1500
Wire Wire Line
	9450 1600 10050 1600
Text Label 4250 4200 0    50   ~ 0
CAN_TX
Text Label 4250 4300 0    50   ~ 0
CAN_RX
Text Label 5050 6350 0    50   ~ 0
CAN_RX
Text Label 4400 2050 0    50   ~ 0
VAN_RX
Wire Wire Line
	4400 2050 4400 1850
Connection ~ 4400 1850
Wire Wire Line
	4400 1850 4850 1850
Text Label 5050 6750 0    50   ~ 0
VAN_RX
Text Label 2900 6950 0    50   ~ 0
CAN_TX
Text Label 4700 1550 0    50   ~ 0
VAN_TX
Wire Wire Line
	4700 1550 4700 1750
Connection ~ 4700 1750
Wire Wire Line
	4700 1750 4100 1750
Text Label 1000 6950 2    50   ~ 0
VAN_TX
Text Label 950  6250 2    50   ~ 0
CS_VAN
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5D8AA66E
P 9800 3250
F 0 "J2" V 9953 3063 50  0000 R CNN
F 1 "Conn_01x03_Male" V 9862 3063 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9800 3250 50  0001 C CNN
F 3 "~" H 9800 3250 50  0001 C CNN
	1    9800 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 2400 9500 3050
Wire Wire Line
	9500 3050 9700 3050
Connection ~ 9500 2400
Wire Wire Line
	9900 3050 10150 3050
Wire Wire Line
	10150 3050 10150 2400
Connection ~ 10150 2400
Wire Wire Line
	10150 2400 10300 2400
Wire Wire Line
	9800 3050 9800 2700
Text Label 950  6350 2    50   ~ 0
MOSI
Wire Wire Line
	1000 6850 1650 6850
Text GLabel 1200 7150 0    50   Input ~ 0
5V
Wire Wire Line
	1200 7150 1650 7150
Text Label 2900 7150 0    50   ~ 0
3V3
Wire Wire Line
	2500 7150 2900 7150
Text Label 950  6450 2    50   ~ 0
SCK
Wire Wire Line
	1000 6950 1650 6950
Wire Wire Line
	1000 6750 1650 6750
Wire Wire Line
	2500 6950 2900 6950
$Comp
L Level_shifter_shield:LevelShifter4Shield U7
U 1 1 5D8F3D90
P 4400 6400
F 0 "U7" H 4400 6775 50  0000 C CNN
F 1 "LevelShifter4Shield" H 4400 6684 50  0000 C CNN
F 2 "PSAVanCanBridge_v14:LevelShifter4_shield" H 4400 6400 50  0001 C CNN
F 3 "" H 4400 6400 50  0001 C CNN
	1    4400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6650 5050 6650
Wire Wire Line
	4600 6250 5050 6250
Wire Wire Line
	4600 6350 5050 6350
Wire Wire Line
	4200 6450 3850 6450
Wire Wire Line
	4600 6450 5050 6450
Wire Wire Line
	4200 6550 3850 6550
Wire Wire Line
	3850 6550 3850 6850
Wire Wire Line
	3850 6850 4400 6850
Wire Wire Line
	4950 6850 4950 6550
Wire Wire Line
	4950 6550 4600 6550
Connection ~ 4400 6850
Wire Wire Line
	4400 6850 4950 6850
Wire Wire Line
	9000 1700 10050 1700
Wire Wire Line
	3250 6650 4200 6650
Wire Wire Line
	2500 6350 4200 6350
Wire Wire Line
	3350 6450 3350 6250
Wire Wire Line
	3350 6250 4200 6250
Wire Wire Line
	3350 6450 2500 6450
$Comp
L Device:R R2
U 1 1 5D946065
P 8450 4900
F 0 "R2" H 8520 4946 50  0000 L CNN
F 1 "2.2K" H 8520 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8380 4900 50  0001 C CNN
F 3 "~" H 8450 4900 50  0001 C CNN
	1    8450 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D9460EF
P 8150 5300
F 0 "R1" H 8220 5346 50  0000 L CNN
F 1 "2.2K" H 8220 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8080 5300 50  0001 C CNN
F 3 "~" H 8150 5300 50  0001 C CNN
	1    8150 5300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5D9499A7
P 8500 5300
F 0 "Q1" H 8691 5346 50  0000 L CNN
F 1 "PN2222A" H 8691 5255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8700 5225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 8500 5300 50  0001 L CNN
	1    8500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5D949A45
P 8700 5000
F 0 "BZ1" H 8853 5029 50  0000 L CNN
F 1 "Buzzer" H 8853 4938 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_Kingstate_KCG0601" V 8675 5100 50  0001 C CNN
F 3 "~" V 8675 5100 50  0001 C CNN
	1    8700 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0108
U 1 1 5D949B97
P 8600 5500
F 0 "#PWR0108" H 8600 5250 50  0001 C CNN
F 1 "GNDD" H 8604 5345 50  0000 C CNN
F 2 "" H 8600 5500 50  0001 C CNN
F 3 "" H 8600 5500 50  0001 C CNN
	1    8600 5500
	1    0    0    -1  
$EndComp
Text GLabel 8300 4900 0    50   Input ~ 0
5V
Text Label 7750 5300 0    50   ~ 0
BZ
Wire Wire Line
	8000 5300 7750 5300
Text Label 3050 5750 0    50   ~ 0
BZ
Wire Wire Line
	2500 5850 3050 5850
$Comp
L Sensor_Temperature:DS18B20 U4
U 1 1 5D9517A0
P 3400 4950
F 0 "U4" H 3171 4904 50  0000 R CNN
F 1 "DS18B20" H 3171 4995 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 4700 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 3250 5200 50  0001 C CNN
	1    3400 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5D9517F8
P 2850 5100
F 0 "R11" H 2920 5146 50  0000 L CNN
F 1 "4.7K" H 2920 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2780 5100 50  0001 C CNN
F 3 "~" H 2850 5100 50  0001 C CNN
	1    2850 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 5250 2850 5250
Wire Wire Line
	3100 4950 2850 4950
$Comp
L power:GNDD #PWR0109
U 1 1 5D96C82F
P 3400 4650
F 0 "#PWR0109" H 3400 4400 50  0001 C CNN
F 1 "GNDD" H 3404 4495 50  0000 C CNN
F 2 "" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3400 4650
	-1   0    0    1   
$EndComp
Text Label 2400 5250 0    50   ~ 0
5V
Wire Wire Line
	2850 5250 2400 5250
Connection ~ 2850 5250
Text Label 3050 5850 0    50   ~ 0
Temp
Text Label 2450 4950 2    50   ~ 0
Temp
Wire Wire Line
	2850 4950 2450 4950
Connection ~ 2850 4950
$Comp
L Device:C C6
U 1 1 5D90B817
P 5700 3700
F 0 "C6" V 5550 3700 50  0000 C CNN
F 1 "0.1uF" V 5850 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5738 3550 50  0001 C CNN
F 3 "~" H 5700 3700 50  0001 C CNN
	1    5700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3700 5400 3700
Connection ~ 5400 3700
Wire Wire Line
	5400 3700 5550 3700
$Comp
L power:GNDD #PWR0110
U 1 1 5D90FFEF
P 6050 3700
F 0 "#PWR0110" H 6050 3450 50  0001 C CNN
F 1 "GNDD" H 6054 3545 50  0000 C CNN
F 2 "" H 6050 3700 50  0001 C CNN
F 3 "" H 6050 3700 50  0001 C CNN
	1    6050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3700 6050 3700
Wire Wire Line
	6000 4250 6550 4250
$Comp
L Device:R R8
U 1 1 5D921E22
P 6450 2350
F 0 "R8" H 6520 2396 50  0000 L CNN
F 1 "100" H 6520 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6380 2350 50  0001 C CNN
F 3 "~" H 6450 2350 50  0001 C CNN
	1    6450 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D921E94
P 6450 2650
F 0 "C8" V 6300 2650 50  0000 C CNN
F 1 "560pF" V 6600 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6488 2500 50  0001 C CNN
F 3 "~" H 6450 2650 50  0001 C CNN
	1    6450 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D921F24
P 6550 4800
F 0 "R10" H 6620 4846 50  0000 L CNN
F 1 "100" H 6620 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6480 4800 50  0001 C CNN
F 3 "~" H 6550 4800 50  0001 C CNN
	1    6550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6100 4550
$Comp
L Device:C C10
U 1 1 5D926725
P 6550 5100
F 0 "C10" V 6400 5100 50  0000 C CNN
F 1 "560pF" V 6700 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6588 4950 50  0001 C CNN
F 3 "~" H 6550 5100 50  0001 C CNN
	1    6550 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 4650 6100 4550
Connection ~ 6100 4550
Wire Wire Line
	6100 4550 6700 4550
Wire Wire Line
	6550 4650 6550 4250
Connection ~ 6550 4250
Wire Wire Line
	6550 4250 6700 4250
Wire Wire Line
	5400 4900 5400 5250
Wire Wire Line
	5400 5250 6100 5250
Connection ~ 5400 5250
Connection ~ 6100 5250
Wire Wire Line
	6100 5250 6550 5250
$Comp
L Device:C C5
U 1 1 5D946C1E
P 5650 1250
F 0 "C5" V 5500 1250 50  0000 C CNN
F 1 "0.1uF" V 5800 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5688 1100 50  0001 C CNN
F 3 "~" H 5650 1250 50  0001 C CNN
	1    5650 1250
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0111
U 1 1 5D946D1A
P 6000 1250
F 0 "#PWR0111" H 6000 1000 50  0001 C CNN
F 1 "GNDD" H 6004 1095 50  0000 C CNN
F 2 "" H 6000 1250 50  0001 C CNN
F 3 "" H 6000 1250 50  0001 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1250 5350 1250
Connection ~ 5350 1250
Wire Wire Line
	5350 1250 5500 1250
Wire Wire Line
	5800 1250 6000 1250
Wire Wire Line
	5950 1800 6450 1800
Wire Wire Line
	5950 2100 6050 2100
$Comp
L Device:R R7
U 1 1 5D960176
P 6050 2350
F 0 "R7" H 6120 2396 50  0000 L CNN
F 1 "100" H 6120 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5980 2350 50  0001 C CNN
F 3 "~" H 6050 2350 50  0001 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D96020E
P 6100 4800
F 0 "R9" H 6170 4846 50  0000 L CNN
F 1 "100" H 6170 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6030 4800 50  0001 C CNN
F 3 "~" H 6100 4800 50  0001 C CNN
	1    6100 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D960268
P 6050 2650
F 0 "C7" V 5900 2650 50  0000 C CNN
F 1 "560pF" V 6200 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6088 2500 50  0001 C CNN
F 3 "~" H 6050 2650 50  0001 C CNN
	1    6050 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5D9602EC
P 6100 5100
F 0 "C9" V 5950 5100 50  0000 C CNN
F 1 "560pF" V 6250 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6138 4950 50  0001 C CNN
F 3 "~" H 6100 5100 50  0001 C CNN
	1    6100 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 2450 5350 2800
Wire Wire Line
	5350 2800 6050 2800
Connection ~ 5350 2800
Connection ~ 6050 2800
Wire Wire Line
	6050 2800 6450 2800
Wire Wire Line
	6050 2200 6050 2100
Connection ~ 6050 2100
Wire Wire Line
	6050 2100 6650 2100
Wire Wire Line
	6450 2200 6450 1800
Connection ~ 6450 1800
Wire Wire Line
	6450 1800 6650 1800
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5D98744A
P 800 6650
F 0 "J3" H 906 6928 50  0000 C CNN
F 1 "Conn_01x04_Male" H 906 6837 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 800 6650 50  0001 C CNN
F 3 "~" H 800 6650 50  0001 C CNN
	1    800  6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6250 1650 6250
Wire Wire Line
	1000 6650 1650 6650
Wire Wire Line
	1650 6350 950  6350
Wire Wire Line
	1650 6450 950  6450
Wire Wire Line
	3150 6750 4200 6750
Text Label 2300 1300 0    50   ~ 0
IRQ
Wire Wire Line
	2700 1300 2700 1550
Wire Wire Line
	2700 1550 2900 1550
Wire Wire Line
	2300 1300 2700 1300
Wire Wire Line
	2450 1400 2600 1400
Wire Wire Line
	2600 1400 2600 1650
Wire Wire Line
	2600 1650 2900 1650
Text Label 5050 6650 0    50   ~ 0
IRQ
Wire Wire Line
	4600 6750 5050 6750
Wire Wire Line
	3250 6250 3250 6650
Wire Wire Line
	3150 6150 3150 6750
Wire Wire Line
	2500 6150 3150 6150
Wire Wire Line
	2500 6250 3250 6250
Wire Wire Line
	1650 6550 1000 6550
$Comp
L power:GNDD #PWR0112
U 1 1 5DBA06AE
P 850 7050
F 0 "#PWR0112" H 850 6800 50  0001 C CNN
F 1 "GNDD" H 854 6895 50  0000 C CNN
F 2 "" H 850 7050 50  0001 C CNN
F 3 "" H 850 7050 50  0001 C CNN
	1    850  7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7050 850  7050
$Comp
L power:GNDD #PWR0113
U 1 1 5DBA7A28
P 3250 7050
F 0 "#PWR0113" H 3250 6800 50  0001 C CNN
F 1 "GNDD" H 3254 6895 50  0000 C CNN
F 2 "" H 3250 7050 50  0001 C CNN
F 3 "" H 3250 7050 50  0001 C CNN
	1    3250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7050 3250 7050
Wire Wire Line
	2500 5750 3050 5750
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5DBD0EBD
P 800 6050
F 0 "J4" H 906 6228 50  0000 C CNN
F 1 "Conn_01x02_Male" H 906 6137 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 6050 50  0001 C CNN
F 3 "~" H 800 6050 50  0001 C CNN
	1    800  6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6050 1000 6050
Wire Wire Line
	1000 6150 1650 6150
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5DBE9C26
P 850 5200
F 0 "J5" H 956 5378 50  0000 C CNN
F 1 "Conn_01x02_Male" H 956 5287 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 850 5200 50  0001 C CNN
F 3 "~" H 850 5200 50  0001 C CNN
	1    850  5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0114
U 1 1 5DBE9CEA
P 1250 5300
F 0 "#PWR0114" H 1250 5050 50  0001 C CNN
F 1 "GNDD" H 1254 5145 50  0000 C CNN
F 2 "" H 1250 5300 50  0001 C CNN
F 3 "" H 1250 5300 50  0001 C CNN
	1    1250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5300 1250 5300
Wire Wire Line
	1050 5200 1250 5200
Wire Wire Line
	1250 5200 1250 5300
Connection ~ 1250 5300
$EndSCHEMATC
