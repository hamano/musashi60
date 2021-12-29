EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Musashi60"
Date ""
Rev "B"
Comp "HAMANO Tsukasa"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1700 3600 0    50   Input ~ 0
colA
Text GLabel 1700 3500 0    50   Input ~ 0
colB
NoConn ~ 1700 1700
$Comp
L power:GND #PWR0101
U 1 1 5F7094A8
P 3550 3400
F 0 "#PWR0101" H 3550 3150 50  0001 C CNN
F 1 "GND" H 3555 3227 50  0000 C CNN
F 2 "" H 3550 3400 50  0001 C CNN
F 3 "" H 3550 3400 50  0001 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F70A3B0
P 1250 3400
F 0 "#PWR0102" H 1250 3150 50  0001 C CNN
F 1 "GND" H 1255 3250 50  0000 C CNN
F 2 "" H 1250 3400 50  0001 C CNN
F 3 "" H 1250 3400 50  0001 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2900 3550 2900
Wire Wire Line
	3100 2400 3550 2400
Wire Wire Line
	3550 2400 3550 2900
Wire Wire Line
	1700 3400 1250 3400
Text GLabel 1700 2700 0    50   Input ~ 0
RUN
Text GLabel 1250 4350 2    50   Input ~ 0
RUN
$Comp
L power:GND #PWR01
U 1 1 5F72BDF2
P 650 4350
F 0 "#PWR01" H 650 4100 50  0001 C CNN
F 1 "GND" H 655 4177 50  0000 C CNN
F 2 "" H 650 4350 50  0001 C CNN
F 3 "" H 650 4350 50  0001 C CNN
	1    650  4350
	1    0    0    -1  
$EndComp
Text GLabel 1700 3300 0    50   Input ~ 0
colC
Connection ~ 8850 4700
Connection ~ 8850 4050
Connection ~ 8850 3400
Connection ~ 8850 2750
$Comp
L local:SW_PUSH-foostan SW_B3
U 1 1 5F6E55AF
P 8550 3750
F 0 "SW_B3" H 8550 4005 50  0000 C CNN
F 1 "SW_PUSH" H 8550 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 8550 3750 50  0001 C CNN
F 3 "" H 8550 3750 50  0000 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_B3
U 1 1 5F6E55A9
P 8850 3900
F 0 "D_B3" V 8896 3980 50  0000 L CNN
F 1 "D" V 8805 3980 50  0000 L CNN
F 2 "local:D_TH" H 8850 3900 50  0001 C CNN
F 3 "~" H 8850 3900 50  0001 C CNN
	1    8850 3900
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_B4
U 1 1 5F6E55A3
P 8550 4400
F 0 "SW_B4" H 8550 4655 50  0000 C CNN
F 1 "SW_PUSH" H 8550 4564 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 8550 4400 50  0001 C CNN
F 3 "" H 8550 4400 50  0000 C CNN
	1    8550 4400
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_B1
U 1 1 5F6E559D
P 8550 2450
F 0 "SW_B1" H 8550 2705 50  0000 C CNN
F 1 "SW_PUSH" H 8550 2614 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 8550 2450 50  0001 C CNN
F 3 "" H 8550 2450 50  0000 C CNN
	1    8550 2450
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_B2
U 1 1 5F6E5597
P 8550 3100
F 0 "SW_B2" H 8550 3355 50  0000 C CNN
F 1 "SW_PUSH" H 8550 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 8550 3100 50  0001 C CNN
F 3 "" H 8550 3100 50  0000 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_B2
U 1 1 5F6E5591
P 8850 3250
F 0 "D_B2" V 8896 3330 50  0000 L CNN
F 1 "D" V 8805 3330 50  0000 L CNN
F 2 "local:D_TH" H 8850 3250 50  0001 C CNN
F 3 "~" H 8850 3250 50  0001 C CNN
	1    8850 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 4050 8850 4050
Wire Wire Line
	8150 2750 8850 2750
Wire Wire Line
	8150 3400 8850 3400
Text GLabel 8250 2150 0    50   Input ~ 0
colB
$Comp
L Device:D D_B1
U 1 1 5F6E557D
P 8850 2600
F 0 "D_B1" V 8896 2680 50  0000 L CNN
F 1 "D" V 8805 2680 50  0000 L CNN
F 2 "local:D_TH" H 8850 2600 50  0001 C CNN
F 3 "~" H 8850 2600 50  0001 C CNN
	1    8850 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_B4
U 1 1 5F6E5577
P 8850 4550
F 0 "D_B4" V 8896 4630 50  0000 L CNN
F 1 "D" V 8805 4630 50  0000 L CNN
F 2 "local:D_TH" H 8850 4550 50  0001 C CNN
F 3 "~" H 8850 4550 50  0001 C CNN
	1    8850 4550
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_A3
U 1 1 5F6A5E17
P 9250 3750
F 0 "SW_A3" H 9250 4005 50  0000 C CNN
F 1 "SW_PUSH" H 9250 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 9250 3750 50  0001 C CNN
F 3 "" H 9250 3750 50  0000 C CNN
	1    9250 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_A3
U 1 1 5F6A5E21
P 9550 3900
F 0 "D_A3" V 9596 3980 50  0000 L CNN
F 1 "D" V 9505 3980 50  0000 L CNN
F 2 "local:D_TH" H 9550 3900 50  0001 C CNN
F 3 "~" H 9550 3900 50  0001 C CNN
	1    9550 3900
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_G4
U 1 1 5F6A8BBB
P 5050 4400
F 0 "SW_G4" H 5050 4655 50  0000 C CNN
F 1 "SW_PUSH" H 5050 4564 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5050 4400 50  0001 C CNN
F 3 "" H 5050 4400 50  0000 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_F1
U 1 1 5F6AA817
P 5750 2450
F 0 "SW_F1" H 5750 2705 50  0000 C CNN
F 1 "SW_PUSH" H 5750 2614 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5750 2450 50  0001 C CNN
F 3 "" H 5750 2450 50  0000 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_A2
U 1 1 5F6AA82B
P 9250 3100
F 0 "SW_A2" H 9250 3355 50  0000 C CNN
F 1 "SW_PUSH" H 9250 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 9250 3100 50  0001 C CNN
F 3 "" H 9250 3100 50  0000 C CNN
	1    9250 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_A2
U 1 1 5F6AA835
P 9550 3250
F 0 "D_A2" V 9596 3330 50  0000 L CNN
F 1 "D" V 9505 3330 50  0000 L CNN
F 2 "local:D_TH" H 9550 3250 50  0001 C CNN
F 3 "~" H 9550 3250 50  0001 C CNN
	1    9550 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 4050 9550 4050
Wire Wire Line
	8850 3400 9550 3400
Text GLabel 8950 2150 0    50   Input ~ 0
colA
$Comp
L Device:D D_F1
U 1 1 5F6AA821
P 6050 2600
F 0 "D_F1" V 6096 2680 50  0000 L CNN
F 1 "D" V 6005 2680 50  0000 L CNN
F 2 "local:D_TH" H 6050 2600 50  0001 C CNN
F 3 "~" H 6050 2600 50  0001 C CNN
	1    6050 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_G4
U 1 1 5F6A8BC5
P 5350 4550
F 0 "D_G4" V 5396 4630 50  0000 L CNN
F 1 "D" V 5305 4630 50  0000 L CNN
F 2 "local:D_TH" H 5350 4550 50  0001 C CNN
F 3 "~" H 5350 4550 50  0001 C CNN
	1    5350 4550
	0    -1   -1   0   
$EndComp
Text GLabel 9650 5350 2    50   Input ~ 0
row5
Text GLabel 9650 4700 2    50   Input ~ 0
row4
$Comp
L local:SW_PUSH-foostan SW_D3
U 1 1 5F812BA9
P 7150 3750
F 0 "SW_D3" H 7150 4005 50  0000 C CNN
F 1 "SW_PUSH" H 7150 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7150 3750 50  0001 C CNN
F 3 "" H 7150 3750 50  0000 C CNN
	1    7150 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_D3
U 1 1 5F812BAF
P 7450 3900
F 0 "D_D3" V 7496 3980 50  0000 L CNN
F 1 "D" V 7405 3980 50  0000 L CNN
F 2 "local:D_TH" H 7450 3900 50  0001 C CNN
F 3 "~" H 7450 3900 50  0001 C CNN
	1    7450 3900
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_D4
U 1 1 5F812BB5
P 7150 4400
F 0 "SW_D4" H 7150 4655 50  0000 C CNN
F 1 "SW_PUSH" H 7150 4564 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7150 4400 50  0001 C CNN
F 3 "" H 7150 4400 50  0000 C CNN
	1    7150 4400
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_D1
U 1 1 5F812BBB
P 7150 2450
F 0 "SW_D1" H 7150 2705 50  0000 C CNN
F 1 "SW_PUSH" H 7150 2614 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7150 2450 50  0001 C CNN
F 3 "" H 7150 2450 50  0000 C CNN
	1    7150 2450
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_D2
U 1 1 5F812BC1
P 7150 3100
F 0 "SW_D2" H 7150 3355 50  0000 C CNN
F 1 "SW_PUSH" H 7150 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7150 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0000 C CNN
	1    7150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_D2
U 1 1 5F812BC7
P 7450 3250
F 0 "D_D2" V 7496 3330 50  0000 L CNN
F 1 "D" V 7405 3330 50  0000 L CNN
F 2 "local:D_TH" H 7450 3250 50  0001 C CNN
F 3 "~" H 7450 3250 50  0001 C CNN
	1    7450 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 4050 7450 4050
Wire Wire Line
	6750 2750 7450 2750
Wire Wire Line
	6750 3400 7450 3400
Text GLabel 7550 2150 0    50   Input ~ 0
colC
$Comp
L Device:D D_D1
U 1 1 5F812BD2
P 7450 2600
F 0 "D_D1" V 7496 2680 50  0000 L CNN
F 1 "D" V 7405 2680 50  0000 L CNN
F 2 "local:D_TH" H 7450 2600 50  0001 C CNN
F 3 "~" H 7450 2600 50  0001 C CNN
	1    7450 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_D4
U 1 1 5F812BD8
P 7450 4550
F 0 "D_D4" V 7496 4630 50  0000 L CNN
F 1 "D" V 7405 4630 50  0000 L CNN
F 2 "local:D_TH" H 7450 4550 50  0001 C CNN
F 3 "~" H 7450 4550 50  0001 C CNN
	1    7450 4550
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_E3
U 1 1 5F83B1EF
P 6450 3750
F 0 "SW_E3" H 6450 4005 50  0000 C CNN
F 1 "SW_PUSH" H 6450 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 6450 3750 50  0001 C CNN
F 3 "" H 6450 3750 50  0000 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_E3
U 1 1 5F83B1F5
P 6750 3900
F 0 "D_E3" V 6796 3980 50  0000 L CNN
F 1 "D" V 6705 3980 50  0000 L CNN
F 2 "local:D_TH" H 6750 3900 50  0001 C CNN
F 3 "~" H 6750 3900 50  0001 C CNN
	1    6750 3900
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_E4
U 1 1 5F83B1FB
P 6450 4400
F 0 "SW_E4" H 6450 4655 50  0000 C CNN
F 1 "SW_PUSH" H 6450 4564 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 6450 4400 50  0001 C CNN
F 3 "" H 6450 4400 50  0000 C CNN
	1    6450 4400
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_E1
U 1 1 5F83B201
P 6450 2450
F 0 "SW_E1" H 6450 2705 50  0000 C CNN
F 1 "SW_PUSH" H 6450 2614 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0000 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_E2
U 1 1 5F83B207
P 6450 3100
F 0 "SW_E2" H 6450 3355 50  0000 C CNN
F 1 "SW_PUSH" H 6450 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 6450 3100 50  0001 C CNN
F 3 "" H 6450 3100 50  0000 C CNN
	1    6450 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_E2
U 1 1 5F83B20D
P 6750 3250
F 0 "D_E2" V 6796 3330 50  0000 L CNN
F 1 "D" V 6705 3330 50  0000 L CNN
F 2 "local:D_TH" H 6750 3250 50  0001 C CNN
F 3 "~" H 6750 3250 50  0001 C CNN
	1    6750 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 4050 6750 4050
Wire Wire Line
	6050 4700 6750 4700
Text GLabel 6850 2150 0    50   Input ~ 0
colD
$Comp
L Device:D D_E1
U 1 1 5F83B218
P 6750 2600
F 0 "D_E1" V 6796 2680 50  0000 L CNN
F 1 "D" V 6705 2680 50  0000 L CNN
F 2 "local:D_TH" H 6750 2600 50  0001 C CNN
F 3 "~" H 6750 2600 50  0001 C CNN
	1    6750 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_E4
U 1 1 5F83B21E
P 6750 4550
F 0 "D_E4" V 6796 4630 50  0000 L CNN
F 1 "D" V 6705 4630 50  0000 L CNN
F 2 "local:D_TH" H 6750 4550 50  0001 C CNN
F 3 "~" H 6750 4550 50  0001 C CNN
	1    6750 4550
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_F3
U 1 1 5F83F174
P 5750 3750
F 0 "SW_F3" H 5750 4005 50  0000 C CNN
F 1 "SW_PUSH" H 5750 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5750 3750 50  0001 C CNN
F 3 "" H 5750 3750 50  0000 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_F3
U 1 1 5F83F17A
P 6050 3900
F 0 "D_F3" V 6096 3980 50  0000 L CNN
F 1 "D" V 6005 3980 50  0000 L CNN
F 2 "local:D_TH" H 6050 3900 50  0001 C CNN
F 3 "~" H 6050 3900 50  0001 C CNN
	1    6050 3900
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_C1
U 1 1 5F83F186
P 7850 2450
F 0 "SW_C1" H 7850 2705 50  0000 C CNN
F 1 "SW_PUSH" H 7850 2614 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7850 2450 50  0001 C CNN
F 3 "" H 7850 2450 50  0000 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_F4
U 1 1 5F83F18C
P 5750 4400
F 0 "SW_F4" H 5750 4655 50  0000 C CNN
F 1 "SW_PUSH" H 5750 4564 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5750 4400 50  0001 C CNN
F 3 "" H 5750 4400 50  0000 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_F4
U 1 1 5F83F192
P 6050 4550
F 0 "D_F4" V 6096 4630 50  0000 L CNN
F 1 "D" V 6005 4630 50  0000 L CNN
F 2 "local:D_TH" H 6050 4550 50  0001 C CNN
F 3 "~" H 6050 4550 50  0001 C CNN
	1    6050 4550
	0    -1   -1   0   
$EndComp
Text GLabel 6150 2150 0    50   Input ~ 0
colE
$Comp
L Device:D D_C1
U 1 1 5F83F19D
P 8150 2600
F 0 "D_C1" V 8196 2680 50  0000 L CNN
F 1 "D" V 8105 2680 50  0000 L CNN
F 2 "local:D_TH" H 8150 2600 50  0001 C CNN
F 3 "~" H 8150 2600 50  0001 C CNN
	1    8150 2600
	0    -1   -1   0   
$EndComp
Text GLabel 5450 2150 0    50   Input ~ 0
colF
$Comp
L Device:D D_F2
U 1 1 5F74767E
P 6050 3250
F 0 "D_F2" V 6096 3330 50  0000 L CNN
F 1 "D" V 6005 3330 50  0000 L CNN
F 2 "local:D_TH" H 6050 3250 50  0001 C CNN
F 3 "~" H 6050 3250 50  0001 C CNN
	1    6050 3250
	0    -1   -1   0   
$EndComp
$Comp
L local:SW_PUSH-foostan SW_F2
U 1 1 5F747684
P 5750 3100
F 0 "SW_F2" H 5750 3355 50  0000 C CNN
F 1 "SW_PUSH" H 5750 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0000 C CNN
	1    5750 3100
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_C3
U 1 1 5F85843D
P 7850 3750
F 0 "SW_C3" H 7850 4005 50  0000 C CNN
F 1 "SW_PUSH" H 7850 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7850 3750 50  0001 C CNN
F 3 "" H 7850 3750 50  0000 C CNN
	1    7850 3750
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_C2
U 1 1 5F858455
P 7850 3100
F 0 "SW_C2" H 7850 3355 50  0000 C CNN
F 1 "SW_PUSH" H 7850 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7850 3100 50  0001 C CNN
F 3 "" H 7850 3100 50  0000 C CNN
	1    7850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_C2
U 1 1 5F85845B
P 8150 3250
F 0 "D_C2" V 8196 3330 50  0000 L CNN
F 1 "D" V 8105 3330 50  0000 L CNN
F 2 "local:D_TH" H 8150 3250 50  0001 C CNN
F 3 "~" H 8150 3250 50  0001 C CNN
	1    8150 3250
	0    -1   -1   0   
$EndComp
Text GLabel 1700 3200 0    50   Input ~ 0
colD
Text GLabel 1700 3100 0    50   Input ~ 0
colE
Text GLabel 1700 3000 0    50   Input ~ 0
colF
Text GLabel 3100 2000 2    50   Input ~ 0
data
$Comp
L local:MJ-4PP-9-foostan J1
U 1 1 5F7A2FFF
P 3150 4350
F 0 "J1" H 3181 4626 50  0000 C CNN
F 1 "MJ-4PP-9" H 3181 4535 50  0000 C CNN
F 2 "local:MJ-4PP-9" H 3425 4525 50  0001 C CNN
F 3 "~" H 3425 4525 50  0001 C CNN
	1    3150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F7AB1C4
P 3550 4575
F 0 "#PWR0106" H 3550 4325 50  0001 C CNN
F 1 "GND" H 3555 4402 50  0000 C CNN
F 2 "" H 3550 4575 50  0001 C CNN
F 3 "" H 3550 4575 50  0001 C CNN
	1    3550 4575
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5F7AB9A0
P 3550 4150
F 0 "#PWR0107" H 3550 4000 50  0001 C CNN
F 1 "VCC" H 3565 4323 50  0000 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4150 3550 4325
Wire Wire Line
	3550 4325 3350 4325
Wire Wire Line
	3350 4375 3550 4375
Wire Wire Line
	3550 4375 3550 4575
NoConn ~ 3350 4275
Wire Wire Line
	3350 4425 3675 4425
Text GLabel 3675 4425 2    50   Input ~ 0
data
$Comp
L Device:D D_C3
U 1 1 5F858443
P 8150 3900
F 0 "D_C3" V 8196 3980 50  0000 L CNN
F 1 "D" V 8105 3980 50  0000 L CNN
F 2 "local:D_TH" H 8150 3900 50  0001 C CNN
F 3 "~" H 8150 3900 50  0001 C CNN
	1    8150 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 3400 6750 3400
Wire Wire Line
	6750 4700 7450 4700
Connection ~ 6750 4050
Connection ~ 7450 4700
Wire Wire Line
	7450 4700 8150 4700
$Comp
L local:SW_PUSH-foostan SW_C4
U 1 1 5F747678
P 7850 4400
F 0 "SW_C4" H 7850 4655 50  0000 C CNN
F 1 "SW_PUSH" H 7850 4564 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 7850 4400 50  0001 C CNN
F 3 "" H 7850 4400 50  0000 C CNN
	1    7850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_C4
U 1 1 5F747655
P 8150 4550
F 0 "D_C4" V 8196 4630 50  0000 L CNN
F 1 "D" V 8105 4630 50  0000 L CNN
F 2 "local:D_TH" H 8150 4550 50  0001 C CNN
F 3 "~" H 8150 4550 50  0001 C CNN
	1    8150 4550
	0    -1   -1   0   
$EndComp
Connection ~ 8150 4700
Wire Wire Line
	8150 4700 8850 4700
Wire Wire Line
	8150 2750 7450 2750
Connection ~ 8150 2750
Connection ~ 7450 2750
Wire Wire Line
	8150 4050 7450 4050
Connection ~ 8150 4050
Connection ~ 7450 4050
Wire Wire Line
	8150 3400 7450 3400
Connection ~ 8150 3400
Connection ~ 7450 3400
Connection ~ 6750 4700
Connection ~ 6750 3400
Text GLabel 1700 2800 0    50   Input ~ 0
colG
Connection ~ 9550 4050
Wire Wire Line
	9550 4050 9650 4050
Text GLabel 9650 2750 2    50   Input ~ 0
row1
Connection ~ 9550 3400
Wire Wire Line
	9550 3400 9650 3400
Text GLabel 4750 2150 0    50   Input ~ 0
colG
Connection ~ 6050 4050
Connection ~ 6050 3400
$Comp
L local:SW_PUSH-foostan SW_G2
U 1 1 60A7871B
P 5050 3100
F 0 "SW_G2" H 5050 3355 50  0000 C CNN
F 1 "SW_PUSH" H 5050 3264 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5050 3100 50  0001 C CNN
F 3 "" H 5050 3100 50  0000 C CNN
	1    5050 3100
	1    0    0    -1  
$EndComp
$Comp
L local:SW_PUSH-foostan SW_G3
U 1 1 60A786E9
P 5050 3750
F 0 "SW_G3" H 5050 4005 50  0000 C CNN
F 1 "SW_PUSH" H 5050 3914 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5050 3750 50  0001 C CNN
F 3 "" H 5050 3750 50  0000 C CNN
	1    5050 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_G3
U 1 1 60A786F3
P 5350 3900
F 0 "D_G3" V 5396 3980 50  0000 L CNN
F 1 "D" V 5305 3980 50  0000 L CNN
F 2 "local:D_TH" H 5350 3900 50  0001 C CNN
F 3 "~" H 5350 3900 50  0001 C CNN
	1    5350 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D_G2
U 1 1 60A78711
P 5350 3250
F 0 "D_G2" V 5396 3330 50  0000 L CNN
F 1 "D" V 5305 3330 50  0000 L CNN
F 2 "local:D_TH" H 5350 3250 50  0001 C CNN
F 3 "~" H 5350 3250 50  0001 C CNN
	1    5350 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 4050 6050 4050
Wire Wire Line
	5350 3400 6050 3400
Text GLabel 9650 3400 2    50   Input ~ 0
row2
Text GLabel 9650 4050 2    50   Input ~ 0
row3
Wire Wire Line
	8850 2750 9650 2750
Wire Wire Line
	6750 2750 6050 2750
Connection ~ 6750 2750
Wire Wire Line
	8850 4700 9650 4700
Wire Wire Line
	6050 4700 5350 4700
Connection ~ 6050 4700
$Comp
L local:SW_PUSH-foostan SW_G1
U 1 1 60DF9883
P 5050 2450
F 0 "SW_G1" H 5050 2705 50  0000 C CNN
F 1 "SW_PUSH" H 5050 2614 50  0000 C CNN
F 2 "local:CherryMX_Direct_Hotswap" H 5050 2450 50  0001 C CNN
F 3 "" H 5050 2450 50  0000 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:D D_G1
U 1 1 60DFA810
P 5350 2600
F 0 "D_G1" V 5396 2680 50  0000 L CNN
F 1 "D" V 5305 2680 50  0000 L CNN
F 2 "local:D_TH" H 5350 2600 50  0001 C CNN
F 3 "~" H 5350 2600 50  0001 C CNN
	1    5350 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 2750 5350 2750
Connection ~ 6050 2750
Text GLabel 3100 3100 2    50   Input ~ 0
row2
Text GLabel 3100 3200 2    50   Input ~ 0
row3
Text GLabel 3100 3300 2    50   Input ~ 0
row4
Text GLabel 3100 3500 2    50   Input ~ 0
row5
Wire Wire Line
	1250 1900 1250 2900
Wire Wire Line
	1250 2900 1250 3400
Text GLabel 3100 3000 2    50   Input ~ 0
row1
Wire Wire Line
	3100 1900 3550 1900
$Comp
L Switch:SW_DIP_x01 SW_RST1
U 1 1 61AA5F24
P 950 4350
F 0 "SW_RST1" H 950 4617 50  0000 C CNN
F 1 "SW_DIP_x01" H 950 4526 50  0000 C CNN
F 2 "local:ResetSW" H 950 4350 50  0001 C CNN
F 3 "~" H 950 4350 50  0001 C CNN
	1    950  4350
	1    0    0    -1  
$EndComp
$Comp
L local:Pico U1
U 1 1 61AA6BC8
P 2400 2650
F 0 "U1" H 2400 3865 50  0000 C CNN
F 1 "Pico" H 2400 3774 50  0000 C CNN
F 2 "local:RPi_Pico_TH" V 2400 2650 50  0001 C CNN
F 3 "" H 2400 2650 50  0001 C CNN
	1    2400 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 2900 1250 2900
Connection ~ 1250 3400
Wire Wire Line
	3550 3400 3100 3400
Connection ~ 3550 3400
Connection ~ 3550 2900
Wire Wire Line
	3550 2900 3550 3400
Connection ~ 3550 2400
Wire Wire Line
	3550 2400 3550 1900
Connection ~ 1250 2900
Wire Wire Line
	9350 5350 9650 5350
$Comp
L Mechanical:MountingHole_Pad H_D1
U 1 1 61CA4EA5
P 6850 5150
F 0 "H_D1" H 6900 5350 50  0000 R CNN
F 1 "D" H 7000 5350 50  0000 C CNN
F 2 "local:Pin_D0.7mm" H 6850 5150 50  0001 C CNN
F 3 "~" H 6850 5150 50  0001 C CNN
	1    6850 5150
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H_C1
U 1 1 61CADEE0
P 7550 5150
F 0 "H_C1" H 7600 5350 50  0000 R CNN
F 1 "C" H 7900 5450 50  0000 R CNN
F 2 "local:Pin_D0.7mm" H 7550 5150 50  0001 C CNN
F 3 "~" H 7550 5150 50  0001 C CNN
	1    7550 5150
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H_B1
U 1 1 61CB4727
P 8250 5150
F 0 "H_B1" H 8300 5350 50  0000 R CNN
F 1 "B" H 8600 5450 50  0000 R CNN
F 2 "local:Pin_D0.7mm" H 8250 5150 50  0001 C CNN
F 3 "~" H 8250 5150 50  0001 C CNN
	1    8250 5150
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H_A1
U 1 1 61CB5AAD
P 8950 5150
F 0 "H_A1" H 9000 5350 50  0000 R CNN
F 1 "A" H 9300 5450 50  0000 R CNN
F 2 "local:Pin_D0.7mm" H 8950 5150 50  0001 C CNN
F 3 "~" H 8950 5150 50  0001 C CNN
	1    8950 5150
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H_5
U 1 1 61CB90F6
P 9350 5450
F 0 "H_5" H 9400 5650 50  0000 R CNN
F 1 "5" H 9700 5750 50  0000 R CNN
F 2 "local:Pin_D0.7mm" H 9350 5450 50  0001 C CNN
F 3 "~" H 9350 5450 50  0001 C CNN
	1    9350 5450
	-1   0    0    1   
$EndComp
NoConn ~ 1700 2000
NoConn ~ 3100 1800
Wire Wire Line
	1350 1800 1700 1800
Wire Wire Line
	2400 1050 2400 1150
$Comp
L power:GND #PWR0105
U 1 1 5F71ED52
P 2400 1150
F 0 "#PWR0105" H 2400 900 50  0001 C CNN
F 1 "GND" H 2405 1000 50  0000 C CNN
F 2 "" H 2400 1150 50  0001 C CNN
F 3 "" H 2400 1150 50  0001 C CNN
	1    2400 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F71B053
P 1950 1150
F 0 "#FLG0102" H 1950 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 1323 50  0000 C CNN
F 2 "" H 1950 1150 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	1    0    0    1   
$EndComp
Wire Wire Line
	1950 1050 1950 1150
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F718BF1
P 2400 1050
F 0 "#FLG0101" H 2400 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1223 50  0000 C CNN
F 2 "" H 2400 1050 50  0001 C CNN
F 3 "~" H 2400 1050 50  0001 C CNN
	1    2400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 61B16EA4
P 1350 1800
F 0 "#PWR02" H 1350 1650 50  0001 C CNN
F 1 "VCC" H 1365 1973 50  0000 C CNN
F 2 "" H 1350 1800 50  0001 C CNN
F 3 "" H 1350 1800 50  0001 C CNN
	1    1350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 61B311D5
P 1950 1050
F 0 "#PWR03" H 1950 900 50  0001 C CNN
F 1 "VCC" H 1965 1223 50  0000 C CNN
F 2 "" H 1950 1050 50  0001 C CNN
F 3 "" H 1950 1050 50  0001 C CNN
	1    1950 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H_GND1
U 1 1 61BA3CFD
P 5900 5550
F 0 "H_GND1" H 5950 5750 50  0000 R CNN
F 1 "GND" H 6250 5850 50  0000 C CNN
F 2 "local:Pin_D0.7mm" H 5900 5550 50  0001 C CNN
F 3 "~" H 5900 5550 50  0001 C CNN
	1    5900 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61BA5C04
P 5900 5650
F 0 "#PWR0103" H 5900 5400 50  0001 C CNN
F 1 "GND" H 5905 5477 50  0000 C CNN
F 2 "" H 5900 5650 50  0001 C CNN
F 3 "" H 5900 5650 50  0001 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2150 8950 3100
Wire Wire Line
	6150 2150 6150 2450
Wire Wire Line
	5450 2150 5450 2450
Wire Wire Line
	6850 2150 6850 2450
Wire Wire Line
	7550 2150 7550 2450
Wire Wire Line
	4750 2150 4750 2450
Wire Wire Line
	8250 2150 8250 2450
NoConn ~ 3100 1700
Text GLabel 3100 2100 2    50   Input ~ 0
hand
Wire Wire Line
	1250 1900 1700 1900
Text GLabel 1550 5550 2    50   Input ~ 0
hand
$Comp
L power:GND #PWR0104
U 1 1 61C8E489
P 950 5750
F 0 "#PWR0104" H 950 5500 50  0001 C CNN
F 1 "GND" H 955 5600 50  0000 C CNN
F 2 "" H 950 5750 50  0001 C CNN
F 3 "" H 950 5750 50  0001 C CNN
	1    950  5750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 61C90232
P 950 5350
F 0 "#PWR0108" H 950 5200 50  0001 C CNN
F 1 "VCC" H 965 5523 50  0000 C CNN
F 2 "" H 950 5350 50  0001 C CNN
F 3 "" H 950 5350 50  0001 C CNN
	1    950  5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5550 950  5550
Wire Wire Line
	950  5550 950  5350
Text GLabel 3100 2200 2    50   Input ~ 0
sda
Text GLabel 3100 2300 2    50   Input ~ 0
scl
NoConn ~ 3100 3600
NoConn ~ 3100 2800
NoConn ~ 3100 2700
NoConn ~ 3100 2600
NoConn ~ 3100 2500
NoConn ~ 1700 2100
NoConn ~ 1700 2600
NoConn ~ 1700 2500
NoConn ~ 1700 2400
NoConn ~ 1700 2300
NoConn ~ 1700 2200
Connection ~ 4750 2450
Wire Wire Line
	4750 2450 4750 3100
Connection ~ 4750 3100
Wire Wire Line
	4750 3100 4750 3750
Connection ~ 4750 3750
Wire Wire Line
	4750 3750 4750 4400
Connection ~ 5450 3750
Wire Wire Line
	5450 3750 5450 4400
Connection ~ 5450 3100
Wire Wire Line
	5450 3100 5450 3750
Connection ~ 5450 2450
Wire Wire Line
	5450 2450 5450 3100
Connection ~ 6150 2450
Wire Wire Line
	6150 2450 6150 3100
Connection ~ 6150 3100
Wire Wire Line
	6150 3100 6150 3750
Connection ~ 6150 3750
Wire Wire Line
	6150 3750 6150 4400
Connection ~ 6850 4400
Wire Wire Line
	6850 4400 6850 5050
Connection ~ 6850 3750
Wire Wire Line
	6850 3750 6850 4400
Connection ~ 6850 3100
Wire Wire Line
	6850 3100 6850 3750
Connection ~ 6850 2450
Wire Wire Line
	6850 2450 6850 3100
Connection ~ 8250 2450
Wire Wire Line
	8250 2450 8250 3100
Connection ~ 8250 3100
Wire Wire Line
	8250 3100 8250 3750
Connection ~ 8250 3750
Wire Wire Line
	8250 3750 8250 4400
Connection ~ 8250 4400
Wire Wire Line
	8250 4400 8250 5050
Connection ~ 8950 3750
Wire Wire Line
	8950 3750 8950 5050
Connection ~ 8950 3100
Wire Wire Line
	8950 3100 8950 3750
Connection ~ 7550 3100
Wire Wire Line
	7550 3100 7550 3750
Connection ~ 7550 3750
Wire Wire Line
	7550 3750 7550 4400
Connection ~ 7550 4400
Wire Wire Line
	7550 4400 7550 5050
Connection ~ 7550 2450
Wire Wire Line
	7550 2450 7550 3100
$EndSCHEMATC
