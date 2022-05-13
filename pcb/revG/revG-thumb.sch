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
L local:MountingHole_Pad-Mechanical H_LA1
U 1 1 61A275B8
P 3950 1250
F 0 "H_LA1" H 3850 1450 50  0000 L CNN
F 1 "A" H 4050 1208 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 3950 1250 50  0001 C CNN
F 3 "~" H 3950 1250 50  0001 C CNN
	1    3950 1250
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_LB1
U 1 1 61A25B2F
P 3100 1250
F 0 "H_LB1" H 3000 1450 50  0000 L CNN
F 1 "B" H 3200 1208 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 3100 1250 50  0001 C CNN
F 3 "~" H 3100 1250 50  0001 C CNN
	1    3100 1250
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_LC1
U 1 1 61A26894
P 2250 1250
F 0 "H_LC1" H 2150 1450 50  0000 L CNN
F 1 "C" H 2350 1208 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 2250 1250 50  0001 C CNN
F 3 "~" H 2250 1250 50  0001 C CNN
	1    2250 1250
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_L5
U 1 1 61A27B42
P 4500 1250
F 0 "H_L5" H 4400 1450 50  0000 L CNN
F 1 "5" H 4600 1208 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 4500 1250 50  0001 C CNN
F 3 "~" H 4500 1250 50  0001 C CNN
	1    4500 1250
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_LGND1
U 1 1 61A27F0E
P 5000 1250
F 0 "H_LGND1" H 4900 1450 50  0000 L CNN
F 1 "GND" H 5100 1208 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 5000 1250 50  0001 C CNN
F 3 "~" H 5000 1250 50  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_LA5
U 1 1 61A293DD
P 3650 1350
F 0 "SW_LA5" H 3650 1513 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 3650 1514 50  0001 C CNN
F 2 "local:CherryMX_Hotswap_Reversible" H 3650 1350 50  0001 C CNN
F 3 "" H 3650 1350 50  0000 C CNN
	1    3650 1350
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_LB5
U 1 1 61A2B094
P 2800 1350
F 0 "SW_LB5" H 2800 1513 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 2800 1514 50  0001 C CNN
F 2 "local:CherryMX_Hotswap_Reversible" H 2800 1350 50  0001 C CNN
F 3 "" H 2800 1350 50  0000 C CNN
	1    2800 1350
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_LC5
U 1 1 61A2FE9B
P 1950 1350
F 0 "SW_LC5" H 1950 1513 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 1950 1514 50  0001 C CNN
F 2 "local:CherryMX_Hotswap_Reversible" H 1950 1350 50  0001 C CNN
F 3 "" H 1950 1350 50  0000 C CNN
	1    1950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_LC5
U 1 1 61A37E86
P 1650 1500
F 0 "D_LC5" V 1650 1420 50  0000 R CNN
F 1 "D_C5" V 1650 1420 50  0001 R CNN
F 2 "local:D_TH_Reversible" H 1650 1500 50  0001 C CNN
F 3 "~" H 1650 1500 50  0001 C CNN
	1    1650 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_LB5
U 1 1 61A3850D
P 2500 1500
F 0 "D_LB5" V 2500 1420 50  0000 R CNN
F 1 "D_B5" V 2455 1420 50  0001 R CNN
F 2 "local:D_TH_Reversible" H 2500 1500 50  0001 C CNN
F 3 "~" H 2500 1500 50  0001 C CNN
	1    2500 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_LA5
U 1 1 61A38A85
P 3350 1500
F 0 "D_LA5" V 3350 1420 50  0000 R CNN
F 1 "D_A5" V 3305 1420 50  0001 R CNN
F 2 "local:D_TH_Reversible" H 3350 1500 50  0001 C CNN
F 3 "~" H 3350 1500 50  0001 C CNN
	1    3350 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61A69EB3
P 5000 1350
F 0 "#PWR01" H 5000 1100 50  0001 C CNN
F 1 "GND" H 5005 1177 50  0000 C CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1650 4500 1350
Wire Wire Line
	1650 1650 2500 1650
Connection ~ 2500 1650
Wire Wire Line
	2500 1650 3350 1650
Connection ~ 3350 1650
Wire Wire Line
	3350 1650 4500 1650
$Comp
L local:MountingHole_Pad-Mechanical H_LD5
U 1 1 62DEBDC6
P 1400 1250
F 0 "H_LD5" H 1300 1450 50  0000 L CNN
F 1 "C" H 1500 1208 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 1400 1250 50  0001 C CNN
F 3 "~" H 1400 1250 50  0001 C CNN
	1    1400 1250
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_LD5
U 1 1 62DEBDCC
P 1100 1350
F 0 "SW_LD5" H 1100 1513 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 1100 1514 50  0001 C CNN
F 2 "local:CherryMX_Hotswap_Reversible" H 1100 1350 50  0001 C CNN
F 3 "" H 1100 1350 50  0000 C CNN
	1    1100 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_LD5
U 1 1 62DEBDD2
P 800 1500
F 0 "D_LD5" V 800 1420 50  0000 R CNN
F 1 "D_C5" V 800 1420 50  0001 R CNN
F 2 "local:D_TH_Reversible" H 800 1500 50  0001 C CNN
F 3 "~" H 800 1500 50  0001 C CNN
	1    800  1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	800  1650 1650 1650
Connection ~ 1650 1650
$EndSCHEMATC
