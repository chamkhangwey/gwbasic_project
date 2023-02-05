10 '
20 ' Asynchronous Communications Adapter Driver
30 '
40 SCREEN 0:WIDTH 80:KEY OFF:CLS
50 PRINT "Select communication mode desired by number"
60 PRINT "then press Enter"
70 PRINT
80 PRINT "1 =     300 Baud     7 Bit     No Parity     1 Stop Bit"
90 PRINT "2 =     300 Baud     8 Bit     No Parity     1 Stop Bit"
100 PRINT "3 =     Customised   Setup     New Mode of Operations"
110 PRINT "4 =     Personalised  Setup    Old Mode of Operations"
120 PRINT
130 PRINT "Note: Selection #1 is the mode used by many time-sharing systems"
140 PRINT
150 INPUT SELECT
160 ON SELECT GOTO 310,400,490,1630
170 INPUT "Incorrect selection. Try again!":GOTO 150
180 '
290 ' Selection 1
300 '
310 CLEAR:POKE 106,0 ' Clear the keyboard buffer
320 OUT &H3FB,&H80 ' Access the divisor latches
330 OUT &H3F8,&H80 ' LSB of baud rate divisor
340 OUT &H3F9,&H1 ' MSB for -300 baud
350 OUT &H3FB,&H2 ' Access TX and RX - 7 bit - no parity
360 GOTO 1680
370 '
380 ' Selection 2
390 '
400 CLEAR:POKE 106,0 ' Clear the keyboard buffer
410 OUT &H3FB,&H80 ' Access the divisor latches
420 OUT &H3F8,&H80 ' LSB of baud rate divisor
430 OUT &H3F9,&H1 ' MSB for -300 baud
440 OUT &H3FB,&H3 ' Access TX and RX - 8 bit - no parity
450 GOTO 1680
460 '
470 ' Selection 3
480 '
490 CLS
500 PRINT "Customised Setup Procedures"
510 PRINT
520 PRINT "Select the desired baud rate"
530 PRINT
540 PRINT " 1 =       50   Baud"
550 PRINT " 2 =       75   Baud"
560 PRINT " 3 =      110   Baud"
570 PRINT " 4 =      134.5 Baud"
580 PRINT " 5 =      150   Baud"
590 PRINT " 6 =      300   Baud"
600 PRINT " 7 =      600   Baud"
610 PRINT " 8 =     1200   Baud"
620 PRINT " 9 =     1800   Baud"
630 PRINT "10 =     2000   Baud"
640 PRINT "11 =     2400   Baud"
650 PRINT "12 =     3600   Baud"
660 PRINT "13 =     4800   Baud"
670 PRINT "14 =     7200   Baud"
680 PRINT "15 =     9600   Baud"
690 PRINT
700 INPUT RATE
710 ON RATE GOTO 730,740,750,760,770,780,790,800,810,820,830,840,850,860,870
720 PRINT "Error on baud rate. Select again!":GOTO 690
730 CLS:MSB=&H9:LSB=&H0:BAUD=50:GOTO 880
740 CLS:MSB=&H6:LSB=&H0:BAUD=75:GOTO 880
750 CLS:MSB=&H4:LSB=&H17:BAUD=110:GOTO 880
760 CLS:MSB=&H3:LSB=&H50:BAUD=134.5:GOTO 880
770 CLS:MSB=&H3:LSB=&H0:BAUD=150:GOTO 880
780 CLS:MSB=&H1:LSB=&H80:BAUD=300:GOTO 880
790 CLS:MSB=&H0:LSB=&HC0:BAUD=600:GOTO 880
800 CLS:MSB=&H0:LSB=&H60:BAUD=1200:GOTO 880
810 CLS:MSB=&H0:LSB=&H40:BAUD=1800:GOTO 880
820 CLS:MSB=&H0:LSB=&H3A:BAUD=2000:GOTO 880
830 CLS:MSB=&H0:LSB=&H30:BAUD=2400:GOTO 880
840 CLS:MSB=&H0:LSB=&H20:BAUD=3600:GOTO 880
850 CLS:MSB=&H0:LSB=&H18:BAUD=4800:GOTO 880
860 CLS:MSB=&H0:LSB=&H10:BAUD=7200:GOTO 880
870 CLS:MSB=&H0:LSB=&HC:BAUD=9600:GOTO 880
880 PRINT "Select the desired word length"
890 PRINT
900 PRINT " 1 =       5 Bits"
910 PRINT " 2 =       6 Bits"
920 PRINT " 3 =       7 Bits"
930 PRINT " 4 =       8 Bits"
940 PRINT
950 INPUT WORDLENGTH
960 ON WORDLENGTH GOTO 980,990,1000,1010
970 PRINT "Error on word length. Select again!":GOTO 950
980 CLS:BITS10=0:GOTO 1020
990 CLS:BITS10=1:GOTO 1020
1000 CLS:BITS10=2:GOTO 1020
1010 CLS:BITS10-3:GOTO 1020
1020 PRINT "Select the number of stop bits you desired."
1030 PRINT
1040 PRINT " 1 =      1 stop bit for all word lengths selected"
1050 PRINT
1060 PRINT " 2 =      1 1/2 stop bits if 5 bit word selected OR"
1070 PRINT "          2     atop bits if 6-8 bit word selected"
1080 PRINT
1090 INPUT STOPBITS
1100 ON STOPBITS GOTO 1120,1130
1110 PRINT "Error on selection. Select again!":GOTO 1090
1120 CLS:BIT2=0:GOTO 1140
1130 CLS:BIT2=4:GOTO 1140
1140 PRINT "Do you want a parity bit?"
1150 PRINT
1160 PRINT " 1 =       No"
1170 PRINT " 2 =       Yes"
1180 PRINT
1190 INPUT PARITY
1200 ON PARITY GOTO 1220,1230
1210 PRINT "Error on selection. Select again!":GOTO 1190
1220 CLS:BITS543=0:GOTO 1460
1230 PRINT
1240 PRINT "Do you want Odd, Even, or Stick parity?"
1250 PRINT
1260 PRINT " 1 =       Odd"
1270 PRINT " 2 =       Even"
1280 PRINT " 3 =       Stick"
1290 PRINT
1300 INPUT PARITY
1310 ON PARITY GOTO 1330,1340,1350
1320 PRINT "Error on selection. Select again!":GOTO 1300
1330 CLS:BITS543=8:GOTO 1460
1340 CLS:BITS543=24:GOTO 1460
1350 PRINT
1360 PRINT "Do you want the parity always set to 1 or 0?"
1370 PRINT
1380 PRINT " 1 =       0 (Always)"
1390 PRINT " 2 =       1 (Always)"
1400 PRINT
1410 INPUT PARITY
1420 ON PARITY GOTO 1440,1450
1430 PRINT "Error on selection. Select again!":GOTO 1410
1440 CLS:BITS543=56:GOTO 1460
1450 CLS:BITS543=40:GOTO 1460
1460 PRINT "If this is the mode you want for your personalised setup"
1470 PRINT
1480 PRINT "Replace the values in the listing for 2060-2080 with these."
1490 PRINT "2060 OUT &H3F8, LSB (Replace LSB) with ";LSB
1500 PRINT "2070 OUT &H3F9, MSB (Replace MSB) with ";MSB
1510 PRINT "2080 OUT &H3FB, LCR (Replace LCR) with ";BITS10+BIT2+BITS543
1520 PRINT
1530 PRINT "And resave a copy of this programme or just lines 2000 to 2080"
1540 POKE 106,0
1550 OUT &H3FB,&H80
1560 OUT &H3F8,LSB
1570 OUT &H3F9,MSB
1580 OUT &H3FB,BITS10+BIT2+BITS543
1590 GOTO 1680
1600 '
1610 ' Personalised Driver Routine
1620 '
1630 CLEAR:POKE 106,0
1640 OUT &H3FB,&H80
1650 OUT &H3F8,LSB
1660 OUT &H3F9,MSB
1670 OUT &H3FB,LCR
1680 PRINT
1690 PRINT "Would you like a simple driver for communications?"
1700 PRINT
1710 PRINT "If you select Yes, this segment will clear the screen and"
1720 PRINT "hook you to the modem or other device."
1730 PRINT
1740 PRINT " 1 =       Yes"
1750 PRINT " 2 =       No"
1760 PRINT
1770 INPUT DRIVER
1780 ON DRIVER GOTO 1800,1810
1790 PRINT "Error on selection. Select again!":GOTO 1770
1800 CLS:GOTO 1850
1810 PRINT "Bye";:END
1820 '
1830 ' Keyboard Driver for Communication
1840 '
1850 CLEAR:POKE 106,0:DEFINT A-Z
1860 IF (INP(1021) AND 1)<>0 THEN D=INP(1016):PRINT CHR$(D);
1870 A$=INKEY$:IF A$="" THEN 1860
1880 IF (INP(1021) AND 32)=0 THEN 1880 ELSE OUT 1016,ASC(A$):PRINT A$;:GOTO 1860
