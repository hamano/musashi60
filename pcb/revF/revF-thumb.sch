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
F 2 "local:CherryMX_Hotswap" H 3650 1350 50  0001 C CNN
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
F 2 "local:CherryMX_Hotswap" H 2800 1350 50  0001 C CNN
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
F 2 "local:CherryMX_Hotswap" H 1950 1350 50  0001 C CNN
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
F 2 "local:D_TH" H 1650 1500 50  0001 C CNN
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
F 2 "local:D_TH" H 2500 1500 50  0001 C CNN
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
F 2 "local:D_TH" H 3350 1500 50  0001 C CNN
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
L local:MountingHole_Pad-Mechanical H_RA1
U 1 1 61A3DFC3
P 4000 2450
F 0 "H_RA1" H 3900 2650 50  0000 L CNN
F 1 "A" H 4100 2408 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 4000 2450 50  0001 C CNN
F 3 "~" H 4000 2450 50  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_RB1
U 1 1 61A3E093
P 3150 2450
F 0 "H_RB1" H 3050 2650 50  0000 L CNN
F 1 "B" H 3250 2408 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 3150 2450 50  0001 C CNN
F 3 "~" H 3150 2450 50  0001 C CNN
	1    3150 2450
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_RC1
U 1 1 61A3E09D
P 2300 2450
F 0 "H_RC1" H 2200 2650 50  0000 L CNN
F 1 "C" H 2400 2408 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 2300 2450 50  0001 C CNN
F 3 "~" H 2300 2450 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_R5
U 1 1 61A3E0B1
P 4550 2450
F 0 "H_R5" H 4450 2650 50  0000 L CNN
F 1 "5" H 4650 2408 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 4550 2450 50  0001 C CNN
F 3 "~" H 4550 2450 50  0001 C CNN
	1    4550 2450
	1    0    0    -1  
$EndComp
$Comp
L local:MountingHole_Pad-Mechanical H_RGND1
U 1 1 61A3E0BB
P 5050 2450
F 0 "H_RGND1" H 4950 2650 50  0000 L CNN
F 1 "GND" H 5150 2408 50  0001 L CNN
F 2 "local:Pin_D0.7mm" H 5050 2450 50  0001 C CNN
F 3 "~" H 5050 2450 50  0001 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_RA5
U 1 1 61A3E0C5
P 3700 2550
F 0 "SW_RA5" H 3700 2713 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 3700 2714 50  0001 C CNN
F 2 "local:CherryMX_Hotswap" H 3700 2550 50  0001 C CNN
F 3 "" H 3700 2550 50  0000 C CNN
	1    3700 2550
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_RB5
U 1 1 61A3E0CF
P 2850 2550
F 0 "SW_RB5" H 2850 2713 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 2850 2714 50  0001 C CNN
F 2 "local:CherryMX_Hotswap" H 2850 2550 50  0001 C CNN
F 3 "" H 2850 2550 50  0000 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_RC5
U 1 1 61A3E0D9
P 2000 2550
F 0 "SW_RC5" H 2000 2713 50  0000 C CNN
F 1 "SW_PUSH-foostan" H 2000 2714 50  0001 C CNN
F 2 "local:CherryMX_Hotswap" H 2000 2550 50  0001 C CNN
F 3 "" H 2000 2550 50  0000 C CNN
	1    2000 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_RC5
U 1 1 61A3E0F7
P 1700 2700
F 0 "D_RC5" V 1700 2620 50  0000 R CNN
F 1 "D_C5" V 1700 2620 50  0001 R CNN
F 2 "local:D_TH" H 1700 2700 50  0001 C CNN
F 3 "~" H 1700 2700 50  0001 C CNN
	1    1700 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_RB5
U 1 1 61A3E101
P 2550 2700
F 0 "D_RB5" V 2550 2620 50  0000 R CNN
F 1 "D_B5" V 2505 2620 50  0001 R CNN
F 2 "local:D_TH" H 2550 2700 50  0001 C CNN
F 3 "~" H 2550 2700 50  0001 C CNN
	1    2550 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_RA5
U 1 1 61A3E10B
P 3400 2700
F 0 "D_RA5" V 3400 2620 50  0000 R CNN
F 1 "D_A5" V 3355 2620 50  0001 R CNN
F 2 "local:D_TH" H 3400 2700 50  0001 C CNN
F 3 "~" H 3400 2700 50  0001 C CNN
	1    3400 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61A3E115
P 5050 2550
F 0 "#PWR02" H 5050 2300 50  0001 C CNN
F 1 "GND" H 5055 2377 50  0000 C CNN
F 2 "" H 5050 2550 50  0001 C CNN
F 3 "" H 5050 2550 50  0001 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2850 4550 2550
Wire Wire Line
	1700 2850 2550 2850
Connection ~ 2550 2850
Wire Wire Line
	2550 2850 3400 2850
Connection ~ 3400 2850
Wire Wire Line
	3400 2850 4550 2850
$EndSCHEMATC
