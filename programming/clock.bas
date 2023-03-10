10 '
20 ' Clock
30 '
40 CLEAR
50 SCREEN 2
60 CLS
70 KEY OFF
80 DIM NUM(6)
90 XCENT=319
100 YCENT=99
110 PI=3.141593
120 DEF FNANG(TIME)=PI/2-PI*TIME/30-2*PI*(TIME>15)
130 LINE (120,20)-(519,178),1,BF 'Draw big white box
140 LINE(XCENT,0)-(0,YCENT),0 'Slice off four corners
150 LINE (XCENT,0)-(639,YCENT),0
160 LINE (XCENT,199)-(0,YCENT),0
170 LINE (XCENT,199)-(639,YCENT),0
180 PAINT (126,20),0 'Paint out four corners
190 PAINT (512,175),0
200 PAINT (512,20),0
210 PAINT (126,175),0
220 RADIUS=179
230 CIRCLE (XCENT,YCENT),RADIUS,0 'Draw dark circle inside
240 PAINT (XCENT,YCENT),0 'Darken entire circle
250 FOR D=1 TO 12
260 GOSUB 800
270 XD=XCENT+165*COS(FNANG(D*5))-11+3*(D>9)
280 YD=YCENT-68*SIN(FNANG(D*5))-3
290 PUT (XD,YD),NUM
300 NEXT D
310 LOCATE 1,1
320 PRINT "F1. Increment Hour";
330 LOCATE 2,1
340 PRINT "F3. Increment Minute";
350 LOCATE 3,1
360 PRINT "F5. Increment Second";
370 LOCATE 1,61
380 PRINT "F2. Decrement Hour";
390 LOCATE 2,61
400 PRINT "F4. Decrement Minute";
410 LOCATE 3,61
420 PRINT "F6. Decrement Second";
430 ON KEY(1) GOSUB 880
440 ON KEY(2) GOSUB 950
450 ON KEY(3) GOSUB 1020
460 ON KEY(4) GOSUB 1090
470 ON KEY(5) GOSUB 1160
480 ON KEY(6) GOSUB 1230
490 KEY(1) ON
500 KEY(2) ON
510 KEY(3) ON
520 KEY(4) ON
530 KEY(5) ON
540 KEY(6) ON
550 '
560 WHILE NOT YET.TO.THE.END.OF.ALL.TIME...
570 WHILE T$=TIME$
580 WEND
590 T$=TIME$
600 SECOND2=SECOND
610 MINUTE2=MINUTE
620 HOUR2=HOUR
630 SECOND=VAL(RIGHT$(T$,2))
640 MINUTE=VAL(MID$(T$,4))
650 HOUR=(VAL(LEFT$(T$,2)) MOD 12)*5+MINUTE/12
660 LOCATE 24,37
670 PRINT T$;
680 CIRCLE (XCENT,YCENT),140,1,-FNANG(SECOND),-FNANG(SECOND):SOUND 440,1:SOUND 880,0
690 CIRCLE (XCENT,YCENT),140,0,-FNANG(SECOND2),-FNANG(SECOND2):SOUND 550,.1:SOUND 100,0
700 IF MINUTE2=MINUTE THEN GOTO 720
710 CIRCLE (XCENT,YCENT),120,0,-FNANG(MINUTE2),-FNANG(MINUTE2)
720 CIRCLE (XCENT,YCENT),120,1,-FNANG(MINUTE),-FNANG(MINUTE)
730 IF HOUR2=HOUR THEN GOTO 750
740 CIRCLE (XCENT,YCENT),70,0,-FNANG(HOUR2),-FNANG(HOUR2)
750 CIRCLE (XCENT,YCENT),70,1,-FNANG(HOUR),-FNANG(HOUR)
760 WEND
770 '
780 ' Subroutine: Get a number for putting anywhere
790 '
800 LOCATE 1,1
810 PRINT D;
820 GET (0,0)-(22,6),NUM
830 LINE (0,0)-(22,6),0,BF
840 RETURN
850 '
860 ' Subroutine: Key 1
870 '
880 GOSUB 1300
890 H=(H+1) MOD 24
900 GOSUB 1370
910 RETURN
920 '
930 ' Subroutine: Key 2
940 '
950 GOSUB 1300
960 H=(H+23) MOD 24
970 GOSUB 1370
980 RETURN
990 '
1000 ' Subroutine: Key 3
1010 '
1020 GOSUB 1300
1030 M=(M+1) MOD 60
1040 GOSUB 1370
1050 RETURN
1060 '
1070 ' Subroutine: Key 4
1080 '
1090 GOSUB 1300
1100 M=(M+59) MOD 60
1110 GOSUB 1370
1120 RETURN
1130 '
1140 ' Subroutine: Key 5
1150 '
1160 GOSUB 1300
1170 S=(S+1) MOD 60
1180 GOSUB 1370
1190 RETURN
1200 '
1210 ' Subroutine: Key 6
1220 '
1230 GOSUB 1300
1240 S=(S+59) MOD 60
1250 GOSUB 1370
1260 RETURN
1270 '
1280 ' Subroutine: Convert time$ into H,M,S
1290 '
1300 H=VAL(LEFT$(TIME$,2))
1310 M=VAL(MID$(TIME$,4))
1320 S=VAL(RIGHT$(TIME$,2))
1330 RETURN
1340 '
1350 ' Subroutine: Format H,M,S for input to time$
1360 '
1370 CLOCK$=MID$(STR$(S),2)
1380 IF S<10 THEN CLOCK$="0"+CLOCK$
1390 CLOCK$=MID$(STR$(M),2)+":"+CLOCK$
1400 IF M<10 THEN CLOCK$="0"+CLOCK$
1410 CLOCK$=MID$(STR$(H),2)+":"+CLOCK$
1420 IF H<10 THEN CLOCK$="0"+CLOCK$
1430 TIME$=CLOCK$
1440 RETURN
