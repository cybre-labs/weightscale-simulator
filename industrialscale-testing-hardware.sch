EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:+3.3V #PWR0101
U 1 1 604CE0AD
P 3150 2250
F 0 "#PWR0101" H 3150 2100 50  0001 C CNN
F 1 "+3.3V" H 3165 2423 50  0000 C CNN
F 2 "" H 3150 2250 50  0001 C CNN
F 3 "" H 3150 2250 50  0001 C CNN
	1    3150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 604CEB0F
P 3450 2500
F 0 "R3" H 3520 2546 50  0000 L CNN
F 1 "220R" H 3520 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3380 2500 50  0001 C CNN
F 3 "~" H 3450 2500 50  0001 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2250 3450 2250
Wire Wire Line
	3450 2250 3450 2350
$Comp
L Device:R R1
U 1 1 604D1825
P 2850 2500
F 0 "R1" H 2780 2546 50  0000 R CNN
F 1 "220R" H 2780 2455 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 2500 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
	1    2850 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 2250 2850 2250
Wire Wire Line
	2850 2250 2850 2350
Connection ~ 3150 2250
$Comp
L Device:R R2
U 1 1 604E394D
P 2850 3100
F 0 "R2" H 2780 3146 50  0000 R CNN
F 1 "220R" H 2780 3055 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 3100 50  0001 C CNN
F 3 "~" H 2850 3100 50  0001 C CNN
	1    2850 3100
	-1   0    0    -1  
$EndComp
Text GLabel 4650 3450 2    50   Input ~ 0
RPI_PWM
Wire Wire Line
	2850 3250 2850 3750
Wire Wire Line
	3450 3750 3450 3650
Wire Wire Line
	3750 3450 3850 3450
$Comp
L Transistor_FET:AO3400A Q1
U 1 1 604D389D
P 3550 3450
F 0 "Q1" H 3755 3496 50  0000 L CNN
F 1 "AO3400A" H 3755 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3750 3375 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 3550 3450 50  0001 L CNN
	1    3550 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 604F6F84
P 3450 3100
F 0 "R4" H 3380 3146 50  0000 R CNN
F 1 "220R" H 3380 3055 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3380 3100 50  0001 C CNN
F 3 "~" H 3450 3100 50  0001 C CNN
	1    3450 3100
	-1   0    0    -1  
$EndComp
Text GLabel 7000 2750 2    50   Input ~ 0
RPI_PWM
Wire Wire Line
	3450 2650 3450 2800
Wire Wire Line
	3450 2800 3650 2800
Connection ~ 3450 2800
Wire Wire Line
	3450 2800 3450 2950
Text GLabel 3650 2800 2    50   Input ~ 0
APOS
Wire Wire Line
	2850 2650 2850 2800
Wire Wire Line
	2850 2800 2650 2800
Connection ~ 2850 2800
Wire Wire Line
	2850 2800 2850 2950
Text GLabel 2650 2800 0    50   Input ~ 0
ANEG
$Comp
L power:+3.3V #PWR0102
U 1 1 605B8139
P 3450 1350
F 0 "#PWR0102" H 3450 1200 50  0001 C CNN
F 1 "+3.3V" V 3450 1600 50  0000 C CNN
F 2 "" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	0    -1   -1   0   
$EndComp
Text GLabel 3450 1600 0    50   Input ~ 0
APOS
Text GLabel 3450 1800 0    50   Input ~ 0
ANEG
Wire Wire Line
	7000 2550 7200 2550
Wire Wire Line
	7200 2550 7200 1950
Wire Wire Line
	7300 2650 7300 1850
Text Label 7150 1850 0    50   ~ 0
RXD
Text Label 7050 1950 0    50   ~ 0
TXD
Wire Wire Line
	7000 2650 7300 2650
Wire Wire Line
	6500 2350 6300 2350
Wire Wire Line
	5350 2950 5350 3050
$Comp
L Transistor_FET:AO3400A Q2
U 1 1 606446DD
P 5450 2750
F 0 "Q2" H 5655 2796 50  0000 L CNN
F 1 "AO3400A" H 5655 2705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5650 2675 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 5450 2750 50  0001 L CNN
	1    5450 2750
	-1   0    0    -1  
$EndComp
Connection ~ 5650 2750
Wire Wire Line
	5750 2750 5650 2750
Wire Wire Line
	5650 2750 5650 2850
$Comp
L Device:R R7
U 1 1 60652307
P 5900 2750
F 0 "R7" V 5693 2750 50  0000 C CNN
F 1 "100K" V 5784 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5830 2750 50  0001 C CNN
F 3 "~" H 5900 2750 50  0001 C CNN
	1    5900 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 6064E69D
P 5650 3000
F 0 "R6" H 5720 3046 50  0000 L CNN
F 1 "1M" H 5720 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5580 3000 50  0001 C CNN
F 3 "~" H 5650 3000 50  0001 C CNN
	1    5650 3000
	1    0    0    -1  
$EndComp
Text Label 6300 2350 1    50   ~ 0
BOOTMODE
$Comp
L power:GND #PWR0103
U 1 1 607427AE
P 5350 3050
F 0 "#PWR0103" H 5350 2800 50  0001 C CNN
F 1 "GND" H 5355 2877 50  0000 C CNN
F 2 "" H 5350 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60743333
P 5650 3150
F 0 "#PWR0104" H 5650 2900 50  0001 C CNN
F 1 "GND" H 5655 2977 50  0000 C CNN
F 2 "" H 5650 3150 50  0001 C CNN
F 3 "" H 5650 3150 50  0001 C CNN
	1    5650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3750 3150 3750
Wire Wire Line
	3150 3800 3150 3750
Connection ~ 3150 3750
Wire Wire Line
	3150 3750 3450 3750
Wire Wire Line
	6300 2350 6300 2000
Text GLabel 5350 2550 1    50   Input ~ 0
SWGND
Wire Wire Line
	6500 1750 6500 2000
Text GLabel 6200 1850 0    50   Input ~ 0
SWGND
Wire Wire Line
	6250 1750 6250 1850
Wire Wire Line
	6250 1850 6200 1850
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 608397B3
P 6250 1550
F 0 "J4" V 6350 1600 50  0000 R CNN
F 1 "Conn_01x01" V 6123 1462 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 6250 1550 50  0001 C CNN
F 3 "~" H 6250 1550 50  0001 C CNN
	1    6250 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2000 6300 2000
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 6084408B
P 6500 1550
F 0 "J5" V 6600 1600 50  0000 R CNN
F 1 "Conn_01x01" V 6373 1462 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 6500 1550 50  0001 C CNN
F 3 "~" H 6500 1550 50  0001 C CNN
	1    6500 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 1950 6800 1950
Wire Wire Line
	6950 1850 6950 1750
Wire Wire Line
	7300 1850 6950 1850
Wire Wire Line
	6800 1950 6800 1750
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 608458D7
P 6950 1550
F 0 "J9" V 7050 1600 50  0000 R CNN
F 1 "Conn_01x01" V 6823 1462 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 6950 1550 50  0001 C CNN
F 3 "~" H 6950 1550 50  0001 C CNN
	1    6950 1550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 60844CFD
P 6800 1550
F 0 "J8" V 6900 1600 50  0000 R CNN
F 1 "Conn_01x01" V 6673 1462 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 6800 1550 50  0001 C CNN
F 3 "~" H 6800 1550 50  0001 C CNN
	1    6800 1550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 608595EA
P 6650 1550
F 0 "J6" V 6750 1600 50  0000 R CNN
F 1 "Conn_01x01" V 6523 1462 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 6650 1550 50  0001 C CNN
F 3 "~" H 6650 1550 50  0001 C CNN
	1    6650 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2250 6500 2100
Wire Wire Line
	6500 2100 6650 2100
Wire Wire Line
	6650 2100 6650 1750
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 604E4B1F
P 3650 1600
F 0 "J2" V 3750 1650 50  0000 R CNN
F 1 "Conn_01x01" V 3523 1512 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 3650 1600 50  0001 C CNN
F 3 "~" H 3650 1600 50  0001 C CNN
	1    3650 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 604ED2DF
P 3650 1800
F 0 "J3" V 3750 1850 50  0000 R CNN
F 1 "Conn_01x01" V 3523 1712 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 3650 1800 50  0001 C CNN
F 3 "~" H 3650 1800 50  0001 C CNN
	1    3650 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 604EDCFD
P 3650 1350
F 0 "J1" V 3750 1400 50  0000 R CNN
F 1 "Conn_01x01" V 3523 1262 50  0001 R CNN
F 2 "industrialscale-testing-hardware:SolderWirePad_1x01_SMD_2x20mm" H 3650 1350 50  0001 C CNN
F 3 "~" H 3650 1350 50  0001 C CNN
	1    3650 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J7
U 1 1 6050B00C
P 6700 2550
F 0 "J7" H 6750 3067 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 6750 2976 50  0000 C CNN
F 2 "industrialscale-testing-hardware:PinHeader_2x08_P2.54mm_Vertical_thick" H 6700 2550 50  0001 C CNN
F 3 "~" H 6700 2550 50  0001 C CNN
	1    6700 2550
	1    0    0    -1  
$EndComp
Text GLabel 3150 3800 3    50   Input ~ 0
SWGND
$Comp
L power:GND #PWR0105
U 1 1 60745032
P 6500 2650
F 0 "#PWR0105" H 6500 2400 50  0001 C CNN
F 1 "GND" H 6505 2477 50  0000 C CNN
F 2 "" H 6500 2650 50  0001 C CNN
F 3 "" H 6500 2650 50  0001 C CNN
	1    6500 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2750 6500 2750
$Comp
L Device:C C1
U 1 1 60525227
P 3850 3600
F 0 "C1" H 3965 3646 50  0000 L CNN
F 1 "10u" H 3965 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3888 3450 50  0001 C CNN
F 3 "~" H 3850 3600 50  0001 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6077F7CD
P 3850 3750
F 0 "#PWR0106" H 3850 3500 50  0001 C CNN
F 1 "GND" H 3855 3577 50  0000 C CNN
F 2 "" H 3850 3750 50  0001 C CNN
F 3 "" H 3850 3750 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60523BE7
P 4500 3450
F 0 "R5" V 4293 3450 50  0000 C CNN
F 1 "7k5" V 4384 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4430 3450 50  0001 C CNN
F 3 "~" H 4500 3450 50  0001 C CNN
	1    4500 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3450 3850 3450
Connection ~ 3850 3450
$EndSCHEMATC
