10 CLS
20 KEY OFF
30 SCREEN 2
40 LOCATE 5,30
50 PRINT "COMBAt III"
60 LOCATE 9,29
70 PRINT "Produced by"
80 LOCATE 11,30
90 PRINT "K.W. Cham"
100 LOCATE 20,25
110 PRINT "All Rights Reserved"
120 FOR X=1 TO 9000
130 NEXT X
140 CLS
150 '
160 ' HEADING
170 '
180 A$(1)="In 189 a.c. China, Han Dynasty was doomed."
190 A$(2)="Many people died because of the war."
200 A$(3)="Three warriors - Liu Bei, Guan Yu and Zhang Fei"
210 A$(4)=" determined to reorganise the Han Dynasty."
220 A$(5)="Meanwhile, Cao Cao seized the chance to enhance"
230 A$(6)=" his power in politic."
240 A$(7)="Sun Ce and Sun Quan had built their forces in"
250 A$(8)=" the east part of China."
260 FOR Y=1 TO 8
270 TEXTLENGTH(Y)=LEN(A$(Y))
280 FOR LENGTH=1 TO TEXTLENGTH(Y)
290 PRINT MID$(A$(Y),LENGTH,1);
300 SOUND 1000,.5
310 FOR SNOOZE=1 TO 400
320 NEXT SNOOZE
330 NEXT LENGTH
340 PRINT
350 NEXT Y
360 LOCATE 23,10
370 PRINT "Press any key..."
380 INPUTVAR$=INKEY$
390 IF INPUTVAR$="" THEN GOTO 380
400 CLS
410 '
420 ' Player Character
430 '
440 LOCATE 18,10:INPUT "Your Name";CHARNAME$
450 IF LEN(CHARNAME$)>=9 THEN BEEP:GOTO 400
460 LOCATE 19,10:INPUT "Choose warrior type (1. Intelligent 2. Fighting 3. Advisory)";WARRIORTYPE%
470 IF WARRIORTYPE%<1 OR WARRIORTYPE%>3 THEN BEEP:GOTO 460
480 LOCATE 20,10:INPUT "Choose mode (1. Liu Bei 2. Cao Cao 3. Sun Jian)";GAMEMODE%
490 IF GAMEMODE%<1 OR GAMEMODE%>3 THEN BEEP:GOTO 480
500 LOCATE 23,10:INPUT "Everything OK (Y/N)";YESNO$
510 IF YESNO$<>"Y" AND YESNO$<>"y" THEN BEEP:GOTO 400
520 ON WARRIORTYPE% GOTO 560,640,720
530 '
540 ' Warrior Type: Intelligent
550 '
560 RANDOMIZE TIMER
570 INTELLECT%=INT(RND*6)+80
580 RANDOMIZE TIMER
590 STRENGTH%=INT(RND*6)+50
600 GOTO 770
610 '
620 ' Warrior Type: Fighting
630 '
640 RANDOMIZE TIMER
650 INTELLECT%=INT(RND*21)+30
660 RANDOMIZE TIMER
670 STRENGTH%=INT(RND*6)+75
680 GOTO 770
690 '
700 ' Warrior Type: Advisory
710 '
720 RANDOMIZE TIMER
730 INTELLECT%=INT(RND*6)+60
740 RANDOMIZE TIMER
750 STRENGTH%=INT(RND*6)+60
760 GOTO 770
770 ON GAMEMODE% GOTO 810,950,1090
780 '
790 ' Game Mode 1
800 '
810 NPCNAME$(1)="Guan Yu":NPCINT%(1)=87:NPCSTR%(1)=99
820 NPCNAME$(2)="Zhang Fei":NPCINT%(2)=63:NPCSTR%(2)=99
830 NPCNAME$(3)="Zhao Yun":NPCINT%(3)=90:NPCSTR%(3)=99
840 NPCNAME$(4)="Ma chao":NPCINT%(4)=59:NPCSTR%(4)=98
850 NPCNAME$(5)="Huang Zhong":NPCINT%(5)=73:NPCSTR%(5)=98
860 NPCNAME$(6)="Wei Yan":NPCINT%(6)=68:NPCSTR%(6)=97
870 NPCNAME$(7)="Zhang Bao":NPCINT%(7)=57:NPCSTR%(7)=96
880 NPCNAME$(8)="Jiang Wei":NPCINT%(8)=92:NPCSTR%(8)=90
890 NPCNAME$(9)="Guan Xing":NPCINT%(9)=78:NPCSTR%(9)=91
900 NPCNAME$(10)="Zhou Cang":NPCINT%(10)=63:NPCSTR%(10)=87
910 GOTO 1230
920 '
930 ' Game Mode 2
940 '
950 NPCNAME$(1)="Xu Chu":NPCINT%(1)=59:NPCSTR%(1)=98
960 NPCNAME$(2)="Xu Huang":NPCINT%(2)=78:NPCSTR%(2)=96
970 NPCNAME$(3)="Xiahou Dun":NPCINT%(3)=65:NPCSTR%(3)=95
980 NPCNAME$(4)="Xiahou Yuan":NPCINT%(4)=63:NPCSTR%(4)=97
990 NPCNAME$(5)="Zhang Liao":NPCINT%(5)=84:NPCSTR%(5)=95
1000 NPCNAME$(6)="Zhang He":NPCINT%(6)=73:NPCSTR%(6)=94
1010 NPCNAME$(7)="Pang De":NPCINT%(7)=65:NPCSTR%(7)=96
1020 NPCNAME$(8)="Dian Wei":NPCINT%(8)=54:NPCSTR%(8)=97
1030 NPCNAME$(9)="Dian Man":NPCINT%(9)=58:NPCSTR%(9)=97
1040 NPCNAME$(10)="Cao Zhang":NPCINT%(10)=90:NPCSTR%(10)=85
1050 GOTO 1230
1060 '
1070 ' Game Mode 3
1080 '
1090 NPCNAME$(1)="Lu Xun":NPCINT%(1)=87:NPCSTR%(1)=92
1100 NPCNAME$(2)="Lv Meng":NPCINT%(2)=83:NPCSTR%(2)=94
1110 NPCNAME$(3)="Zhou Tai":NPCINT%(3)=67:NPCSTR%(3)=97
1120 NPCNAME$(4)="Huang Gai":NPCINT%(4)=72:NPCSTR%(4)=96
1130 NPCNAME$(5)="Ling Cao":NPCINT%(5)=65:NPCSTR%(5)=93
1140 NPCNAME$(6)="Cheng Pu":NPCINT%(6)=78:NPCSTR%(6)=90
1150 NPCNAME$(7)="Ding Feng":NPCINT%(7)=63:NPCSTR%(7)=84
1160 NPCNAME$(8)="Sun Yu":NPCINT%(8)=53:NPCSTR%(8)=83
1170 NPCNAME$(9)="Sun Ce":NPCINT%(9)=93:NPCSTR%(9)=93
1180 NPCNAME$(10)="Wen Pin":NPCINT%(10)=68:NPCSTR%(10)=86
1190 GOTO 1230
1200 '
1210 ' Select NPC
1220 '
1230 BIG%=BIG%+1
1240 RANDOMIZE TIMER
1250 SELECT%=INT(RND*10)+1
1260 PLAYED%(SELECT%)=PLAYED%(SELECT%)+1
1270 IF PLAYED%(SELECT%)>1 THEN GOTO 1250
1280 SELECTEDNPC$(BIG%)=NPCNAME$(SELECT%)
1290 SELECTEDINT%(BIG%)=NPCINT%(SELECT%)
1300 SELECTEDSTR%(BIG%)=NPCSTR%(SELECT%)
1310 CLS
1320 LOCATE 8,10:PRINT "Name";TAB(30);"Int";TAB(37);"Str"
1330 LOCATE 9,10:PRINT SELECTEDNPC$(BIG%);TAB(30);SELECTEDINT%(BIG%);TAB(37);SELECTEDSTR%(BIG%)
1340 LOCATE 10,10:PRINT CHARNAME$;TAB(30);INTELLECT%;TAB(37);STRENGTH%
1350 SET%=SET%+1
1360 LOCATE 16,10:PRINT "1. Sword          4. Bow & Arrows"
1370 LOCATE 17,10:PRINT "2. Sabre          5. Crossbow"
1380 LOCATE 18,10:PRINT "3. Pike"
1390 LOCATE 20,10:INPUT "Choose weapon (1-5)";WEAPON%
1400 IF WEAPON%<1 OR WEAPON%>5 THEN BEEP:GOTO 1390
1410 ON WEAPON% GOTO 1450,1520,1590,1660,1730
1420 '
1430 ' Weapon: Sword
1440 '
1450 IF WARRIORTYPE%=1 THEN WEAPONSTR%=25
1460 IF WARRIORTYPE%=2 THEN WEAPONSTR%=15
1470 IF WARRIORTYPE%=3 THEN WEAPONSTR%=10
1480 GOTO 1770
1490 '
1500 ' Weapon: Sabre
1510 '
1520 IF WARRIORTYPE%=1 THEN WEAPONSTR%=10
1530 IF WARRIORTYPE%=2 THEN WEAPONSTR%=25
1540 IF WARRIORTYPE%=3 THEN WEAPONSTR%=15
1550 GOTO 1770
1560 '
1570 ' Weapon: Pike
1580 '
1590 IF WARRIORTYPE%=1 THEN WEAPONSTR%=10
1600 IF WARRIORTYPE%=2 THEN WEAPONSTR%=15
1610 IF WARRIORTYPE%=3 THEN WEAPONSTR%=20
1620 GOTO 1770
1630 '
1640 ' Weapon: Bow & Arrows
1650 '
1660 IF WARRIORTYPE%=1 THEN WEAPONSTR%=5
1670 IF WARRIORTYPE%=2 THEN WEAPONSTR%=15
1680 IF WARRIORTYPE%=3 THEN WEAPONSTR%=20
1690 GOTO 1770
1700 '
1710 ' Weapon: Crossbow
1720 '
1730 IF WARRIORTYPE%=1 THEN WEAPONSTR%=10
1740 IF WARRIORTYPE%=2 THEN WEAPONSTR%=20
1750 IF WARRIORTYPE%=3 THEN WEAPONSTR%=10
1760 GOTO 1770
1770 CLS
1780 '
1790 ' Tactics
1800 '
1810 LOCATE 16,10:PRINT "1. Defend         3. Cheat"
1820 LOCATE 17,10:PRINT "2. Attack"
1830 LOCATE 19,10:INPUT "Choose tactic (1-3)";TACTIC%
1840 IF TACTIC%<1 OR TACTIC%>3 THEN BEEP:GOTO 1830
1850 ON TACTIC% GOTO 1890,1960,2030
1860 '
1870 ' Tactic: Defend
1880 '
1890 IF STRENGTH%<=50 THEN TACTIC%=20
1900 IF STRENGTH%>50 AND STRENGTH%<85 THEN TACTIC%=10
1910 IF STRENGTH%>=85 THEN TACTIC%=15
1920 GOTO 2070
1930 '
1940 ' Tactic: Attack
1950 '
1960 IF STRENGTH%<=65 THEN TACTIC%=5
1970 IF STRENGTH%>65 AND STRENGTH%<85 THEN TACTIC%=10
1980 IF STRENGTH%>=85 THEN TACTIC%=20
1990 GOTO 2070
2000 '
2010 ' Tactic: Cheat
2020 '
2030 IF INTELLECT%<=55 THEN TACTIC%=5
2040 IF INTELLECT%>55 AND INTELLECT%<SELECTEDINT%(BIG%) THEN TACTIC%=15
2050 IF INTELLECT%>=SELECTEDINT%(BIG%) THEN TACTIC%=25
2060 GOTO 2070
2070 CLS
2080 LOCATE 22,10:PRINT "Press any key..."
2090 INPUTVAR$=INKEY$
2100 IF INPUTVAR$="" THEN GOTO 2090
2110 '
2120 ' Screen
2130 '
2140 SCREEN 1
2150 LINE (0,50)-(319,50),1
2160 LINE (0,150)-(319,150),1
2170 LINE (119,0)-(119,50),1
2180 LINE (199,150)-(199,199),1
2190 PAINT (0,0),2,1
2200 PAINT (319,199),2,1
2210 LOCATE 2,1:PRINT CHARNAME$
2220 LOCATE 4,1:PRINT "Int:";INTELLECT%
2230 LOCATE 5,1:PRINT "Str:";STRENGTH%
2240 LOCATE 21,30:PRINT SELECTEDNPC$(BIG%)
2250 LOCATE 23,30:PRINT "Int:";SELECTEDINT%(BIG%)
2260 LOCATE 24,30:PRINT "Str:";SELECTEDSTR%(BIG%)
2270 IF REST%=1 THEN GOTO 3020
2280 '
2290 ' Strength Bar
3000 '
3010 CHARSTR%=STRENGTH%
3020 NPCSTR%=SELECTEDSTR%(BIG%)
3030 LOCATE 2,17:PRINT "Str:";CHARSTR%
3040 LOCATE 22,17:PRINT "Str:";NPCSTR%
3050 IF CHARSTR%/5=INT(CHARSTR%/5) THEN BOX%=INT(CHARSTR%/5) ELSE BOX%=INT((CHARSTR%/5)+.9)
3060 COLOR 2
3070 FOR A%=1 TO BOX%
3080 LOCATE 4,A%+17:PRINT CHR$(22)
3090 NEXT A%
3100 IF NPCSTR%/5=INT(NPCSTR%/5) THEN NPCBOX%=INT(NPCSTR%/5) ELSE NPCBOX%=INT((NPCSTR%/5)+.9)
3110 FOR A%=0 TO NPCBOX%-1
3120 LOCATE 21,24-A%:PRINT CHR$(22)
3130 NEXT A%
3140 '
3150 ' Open file
3160 '
3170 OPEN "I", 1,"HIGHSCOR"
3180 INPUT #1,HIGHSCORE%
3190 LOCATE 17,2:PRINT "Highscore:";HIGHSCORE%
3200 LOCATE 17,20:PRINT "Score:";SCORE%
3210 CLOSE #1
3220 '
3230 ' Weather
3240 '
3250 RANDOMIZE TIMER
3260 WEATHER%=INT(RND*5)+1
3270 ON WEATHER% GOTO 3310,3380,3440,3500,3560
3280 '
3290 ' Weather: Sunny
3300 '
3310 WEATHERNAME$="Sunny Day"
3320 ENERGY%=30
3330 GOTO 3590
3350 '
3360 ' Weather: Cloudy
3370 '
3380 WEATHERNAME$="Cloudy Day"
3390 ENERGY%=-10
3400 GOTO 3590
3410 '
3420 ' Weather: Rainy
3430 '
3440 WEATHERNAME$="Rainy Day"
3450 ENERGY%=-30
3460 GOTO 3590
3470 '
3480 ' Weather: Windy
3490 '
3500 WEATHERNAME$="Windy Day"
3510 ENERGY%=10
3520 GOTO 3590
3530 '
3540 ' Weather: Stormy
3550 '
3560 WEATHERNAME$="Stormy Day"
3570 ENERGY%=-50
3580 GOTO 3590
3590 LOCATE 2,27:PRINT WEATHERNAME$
3600 IF THECAT%>=1 THEN GOTO 3940
3610 '
3620 ' Graphic
3630 '
3640 DIM PLAYERIMAGE(53), OPPONENTIMAGE(53)
3650 DATA 0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0
3660 DATA 0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0
3670 DATA 0,0,0,0,0,0,0,0,1,1,1,0,0,1,0,0,0
3680 DATA 0,0,0,0,0,0,0,1,1,1,0,0,0,1,2,0,0
3690 DATA 0,0,0,0,0,0,1,1,1,1,1,1,0,2,2,2,0
3700 DATA 0,0,0,0,0,1,1,1,1,0,1,1,1,2,2,2,2
3710 DATA 0,0,0,0,1,1,1,1,0,0,2,2,2,2,0,0,0
3720 DATA 0,0,0,0,0,1,1,1,1,2,2,2,2,0,0,0,0
3730 DATA 0,0,2,2,2,2,2,1,1,2,2,2,2,0,0,0,0
3740 DATA 0,2,0,2,2,2,2,1,1,2,2,2,0,0,0,0,0
3750 DATA 2,2,0,2,2,2,1,1,2,2,2,2,2,0,0,0,0
3760 DATA 2,0,2,2,2,2,1,1,1,2,2,2,2,2,0,0,0
3770 DATA 2,0,2,2,2,2,0,0,0,2,2,0,2,2,0,0,0
3780 DATA 0,2,2,0,2,0,0,0,0,0,2,0,2,2,0,0,0
3790 DATA 0,0,2,0,2,0,0,0,0,0,2,0,2,0,0,0,0
3800 DATA 0,0,2,0,2,2,0,0,0,2,0,0,2,0,0,0,0
3810 DATA 0,0,2,2,0,0,0,0,0,2,0,0,0,0,0,0,0
3820 FOR Y=0 TO 16
3830 FOR X=0 TO 16
3840 READ IMAGE
3850 PSET (X+20,Y+87),IMAGE
3860 PSET (299-X,Y+87),IMAGE
3870 NEXT X:NEXT Y
3880 GET (20,87)-(36,103),PLAYERIMAGE
3890 GET (283,87)-(299,103),OPPONENTIMAGE
3900 THECAT%=THECAT%+1
3910 FOR S=1 TO 500:NEXT S
3920 PUT (20,87),PLAYERIMAGE,XOR
3930 PUT (283,87),OPPONENTIMAGE,XOR
3940 FOR Z=0 TO 123 STEP 10
3950 PUT (Z+20,87),PLAYERIMAGE,XOR
3960 PUT (283-Z,87),OPPONENTIMAGE,XOR
3970 FOR T=1 TO 500:NEXT T
3980 PUT (Z+20,87),PLAYERIMAGE,XOR
3990 PUT (283-Z,87),OPPONENTIMAGE,XOR
4000 NEXT Z
4010 IF THEDOG%>=1 THEN GOTO 4210
4020 '
4030 ' Fighting
4040 '
4050 DIM EXPLODE(52)
4060 DATA 2,2,0,0,0,2,0,0,0,0,2,0,0,1,1
4070 DATA 0,2,0,0,0,2,0,0,0,2,0,0,1,0,0
4080 DATA 0,0,2,0,0,2,2,0,2,2,1,1,0,0,0
4090 DATA 0,0,0,2,0,2,2,2,2,1,1,0,0,0,2
4100 DATA 0,0,0,2,2,1,2,1,2,1,2,2,2,2,0
4110 DATA 0,0,2,2,1,1,1,1,2,1,1,2,2,0,0
4120 DATA 2,2,2,1,1,1,1,1,1,2,0,0,0,0,0
4130 DATA 0,0,1,2,2,1,1,1,2,2,2,2,0,0,0
4140 DATA 0,0,2,2,1,1,1,2,1,2,2,1,2,2,0
4150 DATA 0,2,0,2,1,2,2,1,2,1,1,2,0,0,0
4160 DATA 0,0,0,1,2,2,2,1,2,2,2,2,2,0,0
4170 DATA 0,0,2,2,2,0,2,2,1,2,2,0,0,0,0
4180 DATA 0,0,2,2,0,0,2,0,0,0,0,2,2,0,0
4190 DATA 0,2,0,0,0,0,2,0,0,0,0,0,0,2,0
4200 DATA 0,2,0,0,0,0,0,2,0,0,0,0,0,0,0
4210 FOR FIGHTLOOP%=1 TO 15
4220 LOCATE 7,1:PRINT "Level";BIG%
4230 LOCATE 7,12:PRINT "Set";SET%
4240 LOCATE 7,25:PRINT "Round";FIGHTLOOP%
4250 RANDOMIZE TIMER
4260 CUP%=INT(RND*10)+1
4270 RANDOMIZE TIMER
4280 CAP%=INT(RND*10)+1
4290 PLAYERREDUCTION%=INT((260-(STRENGTH%+INTELLECT%+ENERGY%+WEAPONSTR%+TACTIC%))*CUP%/100)
4300 OPPONENTREDUCTION%=INT((260-(NPCSTR%(BIG%)+NPCINT%(BIG%)-(WEAPONSTR%+TACTIC%)))*CAP%/100)
4310 CHARSTR%=CHARSTR%-PLAYERREDUCTION%
4320 IF CHARSTR%<0 THEN CHARSTR%=0
4330 NPCSTR%=NPCSTR%-OPPONENTREDUCTION%
4340 IF NPCSTR%<0 THEN NPCSTR%=0
4350 LOCATE 2,21:PRINT CHARSTR%
4360 LOCATE 22,21:PRINT NPCSTR%
4370 IF THEDOG%>=1 THEN GOTO 4450
4380 FOR B%=0 TO 14
4390 FOR C%=0 TO 14
4400 READ FIRE
4410 THEDOG%=THEDOG%+1
4420 PSET (153+C%,92+B%),FIRE
4430 NEXT C%:NEXT B%
4440 GET (153,92)-(167,106),EXPLODE
4450 FOR F%=1 TO 3
4460 FOR D%=1 TO 500:NEXT D%
4470 BEEP
4480 PUT (153,92),EXPLODE,XOR
4490 FOR E%=1 TO 500:NEXT E%
4500 BEEP
4510 PUT (153,92),EXPLODE,XOR
4520 NEXT F%
4530 '
4540 ' Deduct Life
4550 '
4560  REST%=2
4570 HON%=HON%+PLAYERREDUCTION%
4580 IF HON%>=STRENGTH% THEN HON%=STRENGTH%
4590 HOW%=INT((HON%/5)+.9)
4600 FOR J%=BOX% TO BOX%-HOW%+1 STEP-1
4610 LOCATE 4,J%+17:PRINT CHR$(0)
4620 NEXT J%
4630 HORSE%=HORSE%+OPPONENTREDUCTION%
4640 IF HORSE%>=SELECTEDSTR%(BIG%) THEN HORSE%=SELECTEDSTR%(BIG%)
4650 HORSES%=INT((HORSE%/5)+.9)
4660 FOR T%=25-NPCBOX% TO 24-NPCBOX%+HORSES%
4670 LOCATE 21,T%:PRINT CHR$(0)
4680 NEXT T%
4690 FOR H%=1 TO 2000:NEXT H%
4700 IF CHARSTR%=0 AND NPCSTR%=0 THEN GOTO 4770
4710 IF CHARSTR%=0 THEN GOTO 4870
4720 IF NPCSTR%=0 THEN GOTO 5100
4730 NEXT FIGHTLOOP%
4740 '
4750 ' Stalemate
4760 '
4770 LOCATE 8,1:PRINT "Stalemate"
4780 LOCATE 9,1:PRINT "Press any key..."
4790 INPUTVAR$=INKEY$
4800 IF INPUTVAR$="" THEN GOTO 4790
4810 HON%=0:HORSE%=0
4820 CLS:SCREEN 2
4830 GOTO 1320
4840 '
4850 ' Lose
4860 '
4870 LOCATE 8,1:PRINT "You lose!"
4880 LOSE%(BIG%)=LOSE%(BIG%)+1
4890 IF LOSE%(BIG%)=3 THEN GOTO 5460
4900 LOCATE 9,1:PRINT "You have only"
4910 LOCATE 10,1:PRINT 3-LOSE%(BIG%);"lifes."
4920 LOCATE 11,1:PRINT "Press any key..."
4930 SCORE%=SCORE%-10
4940 IF SCORE%<0 THEN SCORE%=0
4950 IF SCORE%>HIGHSCORE% THEN HIGHSCORE%=SCORE%
4960 LOCATE 17,20:PRINT "Score:";SCORE%
4970 LOCATE 17,2:PRINT "Highscore:";HIGHSCORE%
4980 OPEN "o",#1,"HIGHSCOR"
4990 WRITE #1,HIGHSCORE%
5000 CLOSE #1
5010 INPUTVAR$=INKEY$
5020 IF INPUTVAR$="" THEN GOTO 5010
5030 CLS:SCREEN 2
5040 HON%=0:HORSE%=0
5050 CHARSTR%=STRENGTH%
5060 GOTO 1320
5070 '
5080 ' Win
5090 '
5100 STRENGTHINCREASE%=0
5101 IF STRENGTH%<SELECTEDSTR%(BIG%) THEN STRENGTHINCREASE%=1
5102 IF STRENGTHINCREASE%=0 THEN GOTO 5140
5103 STRENGTH%=INT(((STRENGTH%+SELECTEDSTR%(BIG%))/2)+.5)
5110 LOCATE 4,1:PRINT "Str:";STRENGTH%
5120 LOCATE 8,1:PRINT "Your Strength increased to";STRENGTH%
5130 FOR P%=1 TO 6000:NEXT P%
5131 STRENGTHINCREASE%=0
5140 IF INTELLECT%<SELECTEDINT%(BIG%) THEN STRENGTHINCREASE%=1
5141 IF STRENGTHINCREASE%=0 THEN GOTO 5180
5142 INTELLECT%=INT(((INTELLECT%+SELECTEDINT%(BIG%))/2)+.5)
5150 LOCATE 3,1:PRINT "Int:";INTELLECT%
5160 LOCATE 9,1:PRINT "Your Intelligence increased to";INTELLECT%
5170 FOR K%=1 TO 6000:NEXT K%
5171 STRENGTHINCREASE%=0
5180 LOCATE 10,1:PRINT "You win!"
5190 LOCATE 11,1:PRINT "Press any key..."
5200 INPUTVAR$=INKEY$
5210 IF INPUTVAR$="" THEN GOTO 5200
5220 HON%=0:HORSE%=0
5230 '
5240 ' Highscore
5250 '
5260 SCOREADDED%=CHARSTR%*2
5261 PRINT "xxx:";SCORE%
5270 SCORE%=SCORE%+SCOREADDED%
5271 IF REST%=1 THEN SCORE%=SCORE%+SCOREADDED%
5272 PRINT "yyy:";SCORE%
5280 IF SCORE%>HIGHSCORE% THEN HIGHSCORE%=SCORE%
5290 LOCATE 17,20:PRINT "Score:";SCORE%
5300 LOCATE 17,2:PRINT "Highscore:";HIGHSCORE%
5310 OPEN "o",#1,"HIGHSCOR"
5320 WRITE #1,HIGHSCORE%
5321 for x=1 to 10000:next x
5330 CLOSE #1
5340 IF BIG%>=10 THEN GOTO 5730
5350 CLS:SCREEN 2
5360 LOCATE 10,10:PRINT "You can straight away move"
5370 LOCATE 11,10:PRINT " to next round."
5380 LOCATE 12,10:PRINT "Or you can take a rest before"
5390 LOCATE 13,10:PRINT " moving to next round."
5400 LOCATE 17,10:INPUT "1. Go   2. Rest (1-2)";REST%
5410 IF REST%<1 OR REST%>2 THEN BEEP:GOTO 5400
5411 IF REST%=1 THEN GOTO 1230 ELSE GOSUB 5550
5420 GOTO 1230
5430 '
5440 ' Lose Three Times
5450 '
5460 CLS:SCREEN 2
5470 LOCATE 10,10:PRINT "Sorry, you have no lifes"
5480 LOCATE 11,10:PRINT " to continue the game."
5490 LOCATE 12,10:PRINT "Thank's for trying"
5500 LOCATE 13,10:PRINT " to play the game."
5510 END
5520 '
5530 ' Rest
5540 '
5550 CLS
5560 IF SCORE%>HIGHSCORE% THEN HIGHSCORE%=SCORE%
5570 LOCATE 18,2:PRINT "Highscore:";HIGHSCORE%
5580 LOCATE 8,20:PRINT "Score:";SCORE%
5590 FOR W%=1 TO STRENGTH%-CHARSTR%
5600 CHARSTR%=CHARSTR%+1
5610 LOCATE 20,2:PRINT "Str:";CHARSTR%
5620 SOUND 100,.5
5630 FOR VIDEO%=1 TO 500:NEXT VIDEO%
5640 NEXT W%
5650 OPEN "o",#1,"HIGHSCOR"
5660 WRITE #1,HIGHSCORE%
5670 CLOSE #1
5680 FOR Z%=1 TO 6000:NEXT Z%
5690 RETURN
5700 '
5710 ' Win All
5720 '
5730 FOR V%=1 TO 6000:NEXT V%
5740 CLS:SCREEN 2
5750 LOCATE 10,10:PRINT "Congratulation! You have"
5760 LOCATE 11,10:PRINT " defeated all the generals."
5770 LOCATE 12,10:PRINT "How about some music?"
5780 LOCATE 18,10:PRINT "Press any key..."
5790 INPUTVAR$=INKEY$
5800 IF INPUTVAR$="" THEN GOTO 5790
5810 CLS
5820 LOCATE 10,10:PRINT "Choral Symphony"
5830 LOCATE 12,10:PRINT "By Beethoven"
5840 L$="o3l4ep64efgp64gfedcp64cde"
5850 M$="l4dl8efl4e"
5860 PLAY "xl$; p64edp64l2d"
5870 PLAY "xl$; dcp64l2c"
5880 PLAY "l4dp64dec"
5890 PLAY "xm$; c"
5900 PLAY "xm$; dcdo2l2go3"
5910 PLAY "xl$; dcp64l2c"
5920 FOR V%=1 TO 6000:NEXT V%
5930 END
