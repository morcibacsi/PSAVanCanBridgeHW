EESchema Schematic File Version 4
LIBS:PSAVanCanBridge_v11-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PSA VAN-CAN Bridge"
Date ""
Rev "v1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x15_Female J1
U 1 1 5C9F42E6
P 4050 4250
F 0 "J1" H 4077 4276 50  0000 L CNN
F 1 "Row1" H 4077 4185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 4050 4250 50  0001 C CNN
F 3 "~" H 4050 4250 50  0001 C CNN
	1    4050 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J2
U 1 1 5C9F4325
P 4800 4250
F 0 "J2" H 4827 4276 50  0000 L CNN
F 1 "Row2" H 4827 4185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 4800 4250 50  0001 C CNN
F 3 "~" H 4800 4250 50  0001 C CNN
	1    4800 4250
	-1   0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:SN65HVD230 U1
U 1 1 5C9F4718
P 6750 3650
F 0 "U1" H 6750 4128 50  0000 C CNN
F 1 "SN65HVD230" H 6750 4037 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6750 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 6650 4050 50  0001 C CNN
	1    6750 3650
	1    0    0    -1  
$EndComp
Text GLabel 3850 3550 0    50   Input ~ 0
3V3
Text GLabel 6750 3350 2    50   Input ~ 0
3V3
Text GLabel 6750 4950 2    50   Input ~ 0
3V3
Text GLabel 3850 3650 0    50   Input ~ 0
GND
$Comp
L Device:CP C1
U 1 1 5CA01C1B
P 8800 2500
F 0 "C1" H 8918 2546 50  0000 L CNN
F 1 "0.33 uF" H 8918 2455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 8838 2350 50  0001 C CNN
F 3 "~" H 8800 2500 50  0001 C CNN
	1    8800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5CA01C6D
P 10000 2500
F 0 "C2" H 10118 2546 50  0000 L CNN
F 1 "0.1 uF" H 10118 2455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 10038 2350 50  0001 C CNN
F 3 "~" H 10000 2500 50  0001 C CNN
	1    10000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2350 10000 2350
Wire Wire Line
	8800 2350 9100 2350
Wire Wire Line
	8800 2650 9400 2650
Connection ~ 9400 2650
Wire Wire Line
	9400 2650 10000 2650
$Comp
L power:GNDD #PWR0101
U 1 1 5CA02045
P 9400 2650
F 0 "#PWR0101" H 9400 2400 50  0001 C CNN
F 1 "GNDD" H 9404 2495 50  0000 C CNN
F 2 "" H 9400 2650 50  0001 C CNN
F 3 "" H 9400 2650 50  0001 C CNN
	1    9400 2650
	1    0    0    -1  
$EndComp
Text GLabel 10250 2350 2    50   Input ~ 0
5V
Wire Wire Line
	10000 2350 10250 2350
Connection ~ 10000 2350
Connection ~ 8800 2350
Text GLabel 5000 3550 2    50   Input ~ 0
5V
Text GLabel 3850 3950 0    50   Input ~ 0
D4
Text GLabel 3850 4250 0    50   Input ~ 0
D5
Text GLabel 3850 4550 0    50   Input ~ 0
D21
Text GLabel 3850 4850 0    50   Input ~ 0
D22
$Comp
L Regulator_Linear:LM78M05_TO220 U3
U 1 1 5CA03D0E
P 9400 2350
F 0 "U3" H 9400 2592 50  0000 C CNN
F 1 "LM78M05_TO220" H 9400 2501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 9400 2575 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78M05.pdf" H 9400 2300 50  0001 C CNN
	1    9400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5250 6150 5250
$Comp
L power:GNDD #PWR0102
U 1 1 5CA08A2E
P 6750 4050
F 0 "#PWR0102" H 6750 3800 50  0001 C CNN
F 1 "GNDD" H 6754 3895 50  0000 C CNN
F 2 "" H 6750 4050 50  0001 C CNN
F 3 "" H 6750 4050 50  0001 C CNN
	1    6750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0103
U 1 1 5CA08A49
P 6750 5650
F 0 "#PWR0103" H 6750 5400 50  0001 C CNN
F 1 "GNDD" H 6754 5495 50  0000 C CNN
F 2 "" H 6750 5650 50  0001 C CNN
F 3 "" H 6750 5650 50  0001 C CNN
	1    6750 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 5CA08B1D
P 5350 3650
F 0 "#PWR0104" H 5350 3400 50  0001 C CNN
F 1 "GNDD" V 5354 3540 50  0000 R CNN
F 2 "" H 5350 3650 50  0001 C CNN
F 3 "" H 5350 3650 50  0001 C CNN
	1    5350 3650
	0    -1   -1   0   
$EndComp
Text GLabel 5000 3650 2    50   Input ~ 0
GND
Wire Wire Line
	5350 3650 5000 3650
$Comp
L Device:R R1
U 1 1 5CA094C5
P 7850 3800
F 0 "R1" H 7780 3754 50  0000 R CNN
F 1 "120" H 7780 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7780 3800 50  0001 C CNN
F 3 "~" H 7850 3800 50  0001 C CNN
	1    7850 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5CA09511
P 8200 5400
F 0 "R2" H 8270 5446 50  0000 L CNN
F 1 "120" H 8270 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8130 5400 50  0001 C CNN
F 3 "~" H 8200 5400 50  0001 C CNN
	1    8200 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 5CA09553
P 6350 4150
F 0 "#PWR0105" H 6350 3900 50  0001 C CNN
F 1 "GNDD" H 6354 3995 50  0000 C CNN
F 2 "" H 6350 4150 50  0001 C CNN
F 3 "" H 6350 4150 50  0001 C CNN
	1    6350 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0106
U 1 1 5CA09572
P 6250 6150
F 0 "#PWR0106" H 6250 5900 50  0001 C CNN
F 1 "GNDD" H 6254 5995 50  0000 C CNN
F 2 "" H 6250 6150 50  0001 C CNN
F 3 "" H 6250 6150 50  0001 C CNN
	1    6250 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CA0A0F7
P 6350 4000
F 0 "R3" H 6150 4050 50  0000 L CNN
F 1 "10K" H 6150 3950 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6280 4000 50  0001 C CNN
F 3 "~" H 6350 4000 50  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5350 8050 5550
Wire Wire Line
	8050 5550 8200 5550
Connection ~ 7850 3650
Wire Wire Line
	7700 3750 7700 3950
Wire Wire Line
	7700 3950 7850 3950
Connection ~ 7850 3950
$Comp
L Device:R R5
U 1 1 5CA1CF4E
P 4950 2200
F 0 "R5" V 4743 2200 50  0000 C CNN
F 1 "2.2K (470/220 for IR)" V 4834 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 2200 50  0001 C CNN
F 3 "~" H 4950 2200 50  0001 C CNN
	1    4950 2200
	0    1    1    0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5CA1D0CE
P 5500 1900
F 0 "BZ1" H 5653 1929 50  0000 L CNN
F 1 "Buzzer" H 5653 1838 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_Kingstate_KCG0601" V 5475 2000 50  0001 C CNN
F 3 "~" V 5475 2000 50  0001 C CNN
	1    5500 1900
	1    0    0    -1  
$EndComp
Connection ~ 8800 2650
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5CA20131
P 5300 2200
F 0 "Q1" H 5491 2246 50  0000 L CNN
F 1 "PN2222A" H 5491 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5500 2125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 5300 2200 50  0001 L CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
Text GLabel 5100 1800 0    50   Input ~ 0
5V
$Comp
L power:GNDD #PWR0107
U 1 1 5CA22031
P 5400 2400
F 0 "#PWR0107" H 5400 2150 50  0001 C CNN
F 1 "GNDD" H 5404 2245 50  0000 C CNN
F 2 "" H 5400 2400 50  0001 C CNN
F 3 "" H 5400 2400 50  0001 C CNN
	1    5400 2400
	1    0    0    -1  
$EndComp
Text GLabel 5000 4650 2    50   Input ~ 0
D34
Text GLabel 4800 2200 0    50   Input ~ 0
D35
Text GLabel 5000 4250 2    50   Input ~ 0
D25
Text GLabel 3850 4350 0    50   Input ~ 0
D18
Text GLabel 3850 4450 0    50   Input ~ 0
D19
Text GLabel 5000 4550 2    50   Input ~ 0
D35
Text GLabel 3850 4650 0    50   Input ~ 0
RX0
Text GLabel 3850 4750 0    50   Input ~ 0
TX0
Text GLabel 5000 4350 2    50   Input ~ 0
D33
Text GLabel 5000 4450 2    50   Input ~ 0
D32
Text GLabel 5000 3750 2    50   Input ~ 0
D13
Text GLabel 5000 3850 2    50   Input ~ 0
D12
$Comp
L Connector:Conn_01x04_Female J10
U 1 1 5CA05F1B
P 2500 3850
F 0 "J10" H 2394 3425 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2394 3516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2500 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 3650 3850 3650
Wire Wire Line
	2700 3850 3200 3850
Text GLabel 2700 3950 2    50   Input ~ 0
5V
Wire Wire Line
	6150 5100 6150 5250
$Comp
L Device:R R4
U 1 1 5CA0964D
P 6250 6000
F 0 "R4" H 6050 6050 50  0000 L CNN
F 1 "10K" H 6000 5950 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6180 6000 50  0001 C CNN
F 3 "~" H 6250 6000 50  0001 C CNN
	1    6250 6000
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:SN65HVD230 U2
U 1 1 5C9F46C2
P 6750 5250
F 0 "U2" H 6750 5728 50  0000 C CNN
F 1 "SN65HVD230" H 6750 5637 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6750 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 6650 5650 50  0001 C CNN
	1    6750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5100 6150 5100
Wire Wire Line
	3450 5150 6350 5150
Wire Wire Line
	6350 3550 6100 3550
Wire Wire Line
	6150 4350 6150 3650
Wire Wire Line
	6150 3650 6350 3650
$Comp
L Connector:Conn_01x15_Female J8
U 1 1 5D168788
P 4500 4250
F 0 "J8" H 4527 4276 50  0000 L CNN
F 1 "Row2" H 4527 4185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 4500 4250 50  0001 C CNN
F 3 "~" H 4500 4250 50  0001 C CNN
	1    4500 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J7
U 1 1 5D168824
P 4300 4250
F 0 "J7" H 4327 4276 50  0000 L CNN
F 1 "Row1" H 4327 4185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 4300 4250 50  0001 C CNN
F 3 "~" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4750 3850 4750
Wire Wire Line
	3850 4650 4100 4650
Wire Wire Line
	4100 4450 3850 4450
Wire Wire Line
	3850 4350 4100 4350
Wire Wire Line
	3850 4250 4100 4250
Wire Wire Line
	3850 4150 4100 4150
Wire Wire Line
	4100 4050 3850 4050
Wire Wire Line
	3850 3950 4100 3950
Wire Wire Line
	4100 3850 3850 3850
Wire Wire Line
	3850 3750 4100 3750
Wire Wire Line
	4700 3550 5000 3550
Wire Wire Line
	5000 3650 4700 3650
Connection ~ 5000 3650
Wire Wire Line
	4700 3750 5000 3750
Wire Wire Line
	5000 3850 4700 3850
Wire Wire Line
	4700 3950 5000 3950
Wire Wire Line
	5000 4050 4700 4050
Wire Wire Line
	4700 4150 5000 4150
Wire Wire Line
	5000 4250 4700 4250
Wire Wire Line
	4700 4350 5000 4350
Wire Wire Line
	5000 4450 4700 4450
Wire Wire Line
	4700 4550 5000 4550
Wire Wire Line
	5000 4650 4700 4650
Wire Wire Line
	4700 4750 5000 4750
Wire Wire Line
	5000 4850 4700 4850
Wire Wire Line
	5000 4950 4700 4950
Wire Wire Line
	4100 3650 3850 3650
Connection ~ 3850 3650
Wire Wire Line
	4100 3550 3850 3550
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5D1B8AD2
P 10000 4600
F 0 "J3" H 10106 4978 50  0000 C CNN
F 1 "Conn_01x06_Male" H 10106 4887 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S06B-XH-A_1x06_P2.50mm_Horizontal" H 10000 4600 50  0001 C CNN
F 3 "~" H 10000 4600 50  0001 C CNN
	1    10000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2900 8800 2900
Wire Wire Line
	8800 2900 8800 2650
Wire Wire Line
	10200 4400 9650 4400
Wire Wire Line
	9300 3000 8400 3000
Wire Wire Line
	8400 3000 8400 2350
Wire Wire Line
	8400 2350 8800 2350
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5D1D1B89
P 9450 4600
F 0 "J4" H 9556 4978 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9556 4887 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9450 4600 50  0001 C CNN
F 3 "~" H 9450 4600 50  0001 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4600 10200 4600
Wire Wire Line
	9650 4700 10200 4700
Wire Wire Line
	9650 4800 10200 4800
Wire Wire Line
	9650 4900 10200 4900
Connection ~ 8200 5550
Wire Wire Line
	7150 5350 8050 5350
Wire Wire Line
	7150 5250 8200 5250
Wire Wire Line
	7150 3650 7850 3650
Wire Wire Line
	7850 3650 8350 3650
Wire Wire Line
	7150 3750 7700 3750
Wire Wire Line
	7850 3950 8200 3950
Wire Wire Line
	9650 4500 10200 4500
Connection ~ 5000 4350
Wire Wire Line
	5000 4350 6150 4350
Wire Wire Line
	6100 4450 5000 4450
Wire Wire Line
	6100 3550 6100 4450
Connection ~ 5000 4450
Wire Wire Line
	3500 5100 3500 4550
Wire Wire Line
	3500 4550 3850 4550
Connection ~ 3850 4550
Wire Wire Line
	3850 4550 4100 4550
Wire Wire Line
	3450 5150 3450 4350
Wire Wire Line
	3450 4350 3850 4350
Connection ~ 3850 4350
Wire Wire Line
	6350 5450 6250 5450
Wire Wire Line
	6250 5450 6250 5850
Wire Wire Line
	9200 4800 9650 4800
Wire Wire Line
	9200 2900 9200 4800
Connection ~ 9650 4800
Wire Wire Line
	9300 4900 9650 4900
Wire Wire Line
	9300 3000 9300 4900
Connection ~ 9650 4900
Wire Wire Line
	8750 5550 8750 4500
Wire Wire Line
	8750 4500 9650 4500
Wire Wire Line
	8200 5550 8750 5550
Connection ~ 9650 4500
Wire Wire Line
	8200 5250 8600 5250
Wire Wire Line
	8600 5250 8600 4400
Wire Wire Line
	8600 4400 9650 4400
Connection ~ 8200 5250
Connection ~ 9650 4400
Wire Wire Line
	3200 3850 3200 4950
Wire Wire Line
	3200 4950 3850 4950
Connection ~ 3850 4950
Wire Wire Line
	3850 4950 4100 4950
Wire Wire Line
	8350 4700 9650 4700
Wire Wire Line
	8350 3650 8350 4700
Connection ~ 9650 4700
Wire Wire Line
	8200 4600 9650 4600
Wire Wire Line
	8200 3950 8200 4600
Connection ~ 9650 4600
$Comp
L Device:R R6
U 1 1 5D16BFD5
P 5250 1800
F 0 "R6" V 5043 1800 50  0000 C CNN
F 1 "2.2K" V 5134 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5180 1800 50  0001 C CNN
F 3 "~" H 5250 1800 50  0001 C CNN
	1    5250 1800
	0    1    1    0   
$EndComp
Text GLabel 2900 5000 2    50   Input ~ 0
3V3
$Comp
L power:GNDD #PWR0108
U 1 1 5D1FD11A
P 2450 5300
F 0 "#PWR0108" H 2450 5050 50  0001 C CNN
F 1 "GNDD" H 2454 5145 50  0000 C CNN
F 2 "" H 2450 5300 50  0001 C CNN
F 3 "" H 2450 5300 50  0001 C CNN
	1    2450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3750 2700 3750
Wire Wire Line
	3300 3750 3300 4850
Wire Wire Line
	3300 4850 3850 4850
Connection ~ 2700 3750
Wire Wire Line
	2700 3750 3300 3750
Connection ~ 3850 4850
Wire Wire Line
	3850 4850 4100 4850
Text GLabel 2850 5250 2    50   Input ~ 0
D22
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5D203C7B
P 2250 5200
F 0 "J5" H 2144 4775 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2144 4866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2250 5200 50  0001 C CNN
F 3 "~" H 2250 5200 50  0001 C CNN
	1    2250 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5D21484F
P 2750 5100
F 0 "R7" V 2950 5100 50  0000 C CNN
F 1 "4.7K" V 2850 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 5100 50  0001 C CNN
F 3 "~" H 2750 5100 50  0001 C CNN
	1    2750 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5000 2900 5000
Wire Wire Line
	2900 5100 2900 5000
Wire Wire Line
	2600 5100 2550 5100
Wire Wire Line
	2850 5250 2550 5250
Wire Wire Line
	2550 5250 2550 5100
Connection ~ 2550 5100
Wire Wire Line
	2550 5100 2450 5100
$EndSCHEMATC
