10 '
20 ' Jin Yong Special 2
30 '
40 OPTION BASE 1
50 DIM ENERMY$(20),KUNGFU$(20),ENERMYLIFE%(20),ENERMYPOWER%(20),TARAF%(20)
60 CLS:KEY OFF:SCREEN 2
70 LOCATE 8,30:PRINT "Jin Yong Special 2"
80 LOCATE 12,27:PRINT "Producer: K.W.Cham"
90 LOCATE 20,28:PRINT "All Rights Reserved"
100 FOR D=1 TO 10000:NEXT D
110 '
120 ' Player's Identity
130 '
140 CLS
150 LOCATE 10,10:INPUT "Player's Name";NAMA$
160 IF NAMA$="" THEN GOTO 170 ELSE GOTO 190
170 BEEP:LOCATE 10,10:PRINT "                              "
180 GOTO 150
190 IF LEN(NAMA$)>12 THEN GOTO 200 ELSE GOTO 280
200 BEEP:LOCATE 11,10:PRINT "Your name is too long."
210 FOR D=1 TO 9000:NEXT D
220 LOCATE 10,10:PRINT "                              "
230 LOCATE 11,10:PRINT "                               "
240 GOTO 150
250 '
260 ' Player's Ability
270 '
280 RANDOMIZE TIMER
290 LIFE%=INT(RND*301)+200
300 CLS
310 LOCATE 10,10:PRINT "1. Xiang Long Shi Ba Zhang"
320 LOCATE 11,10:PRINT "2. Du Gu Jiu Jian"
330 LOCATE 12,10:PRINT "3. Jiu Yang Shen Gong"
340 LOCATE 13,10:PRINT "4. Qi Shang Quan"
350 LOCATE 14,10:PRINT "5. Yi Yang Zhi"
360 LOCATE 15,10:PRINT "6. Liu Mai Shen Jian"
370 LOCATE 16,10:PRINT "7. Da Gou Bang Fa"
380 LOCATE 17,10:PRINT "8. Qian Kun Da Nuo Yi"
390 LOCATE 20,10:INPUT "Choose (1-8)";WHICH%
400 IF WHICH%>0 AND WHICH%<9 THEN GOTO 430
410 BEEP:LOCATE 20,10:PRINT "                              "
420 GOTO 390
430 ON WHICH% GOTO 470,550,630,710,790,870,950,1030
440 '
450 ' Player Ability: Xiang Long Shi Ba Zhang
460 '
470 WUSHU$="Xiang Long Shi Ba Zhang"
480 RANDOMIZE TIMER
490 SKILL%=INT(RND*200)+200
500 STANDARD%=INT(SKILL%/100)
510 GOTO 1100
520 '
530 ' Player Ability: Du Gu Jiu Jian
540 '
550 WUSHU$="Du Gu Jiu Jian"
560 RANDOMIZE TIMER
570 SKILL%=INT(RND*250)+200
580 STANDARD%=INT(SKILL%/100)
590 GOTO 1100
600 '
610 ' Player Ability: Jiu Yang Shen Gong
620 '
630 WUSHU$="Jiu Yang Shen Gong"
640 RANDOMIZE TIMER
650 SKILL%=INT(RND*300)+200
660 STANDARD%=INT(SKILL%/100)
670 GOTO 1100
680 '
690 ' Player Ability: Qi Shang Quan
700 '
710 WUSHU$="Qi Shang Quan"
720 RANDOMIZE TIMER
730 SKILL%=INT(RND*300)+200
740 STANDARD%=INT(SKILL%/100)
750 GOTO 1100
760 '
770 ' Player Ability: Yi Yang Zhi
780 '
790 WUSHU$="Yi Yang Zhi"
800 RANDOMIZE TIMER
810 SKILL%=INT(RND*300)+200
820 STANDARD%=INT(SKILL%/100)
830 GOTO 1100
840 '
850 ' Player Ability: Liu Mai Shen Jian
860 '
870 WUSHU$="Liu Mai Shen Jian"
880 RANDOMIZE TIMER
890 SKILL%=INT(RND*250)+200
900 STANDARD%=INT(SKILL%/100)
910 GOTO 1100
920 '
930 ' Player Ability: Da Gou Bang Fa
940 '
950 WUSHU$="Da Gou Bang Fa"
960 RANDOMIZE TIMER
970 SKILL%=INT(RND*300)+200
980 STANDARD%=INT(SKILL%/100)
990 GOTO 1100
1000 '
1010 ' Player Ability: Qian Kun Da Nuo Yi
1020 '
1030 WUSHU$="Qian Kun Da Nuo Yi"
1040 RANDOMIZE TIMER
1050 SKILL%=INT(RND*250)+200
1060 STANDARD%=INT(SKILL%/100)
1070 '
1080 ' Enermy's Ability
1090 '
1100 ENERMY$(1)="Zhou Bo Tong":KUNGFU$(1)="Kong Ming Quan"
1110 ENERMY$(2)="Zhang Zhao Chong":KUNGFU$(2)="Rou Yun Jian Shu"
1120 ENERMY$(3)="Hong Qi Gong":KUNGFU$(3)="Xiao Yao Quan"
1130 ENERMY$(4)="Chen Jia Luo":KUNGFU$(4)="Bai Hua Cuo Quan"
1140 ENERMY$(5)="Huang Yao Shi":KUNGFU$(5)="Tan Zhi Shen Tong"
1150 ENERMY$(6)="Xiao Long Nv":KUNGFU$(6)="Yu Nv Jian Fa"
1160 ENERMY$(7)="Ou Yang Feng":KUNGFU$(7)="Ha Ma Gong"
1170 ENERMY$(8)="Xie Xun":KUNGFU$(8)="Qi Shang Quan"
1180 ENERMY$(9)="Huang Rong":KUNGFU$(9)="Lan Hua Fu Xue Shou"
1190 ENERMY$(10)="Xu Zhu":KUNGFU$(10)="Xiao Wu Xiang Gong"
1200 ENERMY$(11)="Wei Xiao Bao":KUNGFU$(11)="Da Fei Qian Ye Shou"
1210 ENERMY$(12)="Hu Fei":KUNGFU$(12)="Hu Jia Dao Fa"
1220 ENERMY$(13)="Duan Yu":KUNGFU$(13)="Liu Mai Shen Jian"
1230 ENERMY$(14)="Yi Deng":KUNGFU$(14)="Xian Tian Gong"
1240 ENERMY$(15)="Qiao Feng":KUNGFU$(15)="Da Gou Bang Fa"
1250 ENERMY$(16)="Ling Hu Chong":KUNGFU$(16)="Du Gu Jiu Jian"
1260 ENERMY$(17)="Zhang Wu Ji":KUNGFU$(17)="Jiu Yang Shen Gong"
1270 ENERMY$(18)="Wang Chong Yang":KUNGFU$(18)="Yi Yang Zhi"
1280 ENERMY$(19)="Yang Guo":KUNGFU$(19)="Yu Xiao Jian Fa"
1290 ENERMY$(20)="Guo Jing":KUNGFU$(20)="Xiang Long Shi Ba Zhang"
1300 FOR C=1 TO 5
1310 RANDOMIZE TIMER
1320 ENERMYLIFE%(C)=INT(RND*101)+500
1330 RANDOMIZE TIMER
1340 ENERMYPOWER%(C)=INT(RND*101)+400
1350 NEXT C
1360 FOR D=6 TO 10
1370 RANDOMIZE TIMER
1380 ENERMYLIFE%(D)=INT(RND*101)+600
1390 RANDOMIZE TIMER
1400 ENERMYPOWER%(D)=INT(RND*101)+500
1410 NEXT D
1420 FOR E=11 TO 15
1430 RANDOMIZE TIMER
1440 ENERMYLIFE%(E)=INT(RND*101)+600
1450 RANDOMIZE TIMER
1460 ENERMYPOWER%(E)=INT(RND*101)+600
1470 NEXT E
1480 FOR F=16 TO 20
1490 RANDOMIZE TIMER
1500 ENERMYLIFE%(F)=INT(RND*101)+800
1510 RANDOMIZE TIMER
1520 ENERMYPOWER%(F)=INT(RND*101)+800
1530 NEXT F
1540 FOR W=1 TO 20
1550 TARAF%(W)=INT(ENERMYPOWER%(W)/100)
1560 NEXT W
1570 '
1580 ' Screen
1590 '
1600 IF KALAH%=1 THEN GOTO 1620
1610 TURN%=TURN%+1
1620 FOR D=1 TO 10000:NEXT D
1630 CLS
1640 LOCATE 10,10:PRINT NAMA$;", your enermy is ";ENERMY$(TURN%)
1650 LOCATE 20,10:PRINT "Press any key..."
1660 AB$=INKEY$
1670 IF AB$="" THEN GOTO 1660
1680 NYAWA%(TURN%)=ENERMYLIFE%(TURN%)
1690 NEIGONG%(TURN%)=ENERMYPOWER%(TURN%)
1700 MIA%=LIFE%
1710 KEMAHIRAN%=SKILL%
1720 CLS
1730 LINE (20,20)-(270,100),1,B
1740 LOCATE 5,6:PRINT NAMA$
1750 LOCATE 7,6:PRINT "Power:";MIA%;"/";LIFE%;"    "
1760 LOCATE 9,6:PRINT "Nei:";KEMAHIRAN%;"/";SKILL%;"    "
1770 LOCATE 11,6:PRINT WUSHU$;":";STANDARD%
1780 LINE (350,20)-(600,100),1,B
1790 LOCATE 5,49:PRINT ENERMY$(TURN%)
1800 LOCATE 7,49:PRINT "Power:";NYAWA%(TURN%);"/";ENERMYLIFE%(TURN%);"    "
1810 LOCATE 9,49:PRINT "Nei:";NEIGONG%(TURN%);"/";ENERMYPOWER%(TURN%);"    "
1820 LOCATE 11,49:PRINT KUNGFU$(TURN%);":";TARAF%(TURN%)
1830 LOCATE 20,40:PRINT LEFT$(NAMA$,3)
1840 LOCATE 20,60:PRINT LEFT$(ENERMY$(TURN%),3)
1850 LINE (20,105)-(130,140),1,B
1860 LOCATE 15,4:PRINT "1. Defend"
1870 LOCATE 17,4:PRINT "2. Attack"
1880 LOCATE 19,4:INPUT "Which (1-2)";WHAT%
1890 IF WHAT%>0 AND WHAT%<3 THEN GOTO 1930
1900 BEEP:LOCATE 19,4:PRINT "                              "
1910 GOTO 1880
1920 LOCATE 19,4:PRINT "                    "
1930 ON WHAT% GOTO 1970,2060
1940 '
1950 ' Screen: Defend
1960 '
1970 FOR D=1 TO 9000:NEXT D
1980 LOCATE 19,4:PRINT "                              "
1990 BEEP:KEMAHIRAN%=KEMAHIRAN%+120
2000 IF KEMAHIRAN%>SKILL% THEN KEMAHIRAN%=SKILL%
2010 WHO%=1
2020 GOTO 2300
2030 '
2040 ' Screen: Attack
2050 '
2060 IF KEMAHIRAN%<=0 THEN GOTO 1900
2070 FOR D=1 TO 9000:NEXT D
2080 LOCATE 22,4:PRINT "                              "
2090 RANDOMIZE TIMER
2100 KAKI%=INT(RND*6)+5
2110 BANYAK%=INT(((1500-STANDARD%*100)+(1100-SKILL%)*KAKI%)*.01)
2120 KEMAHIRAN%=KEMAHIRAN%-BANYAK%
2130 IF KEMAHIRAN%<0 THEN KEMAHIRAN%=0
2140 RANDOMIZE TIMER
2150 KADANG%=INT(RND*5)+1
2160 IF KADANG%<>3 THEN GOTO 2210
2170 BEEP:LOCATE 19,60:PRINT "Miss"
2180 FOR D=1 TO 6000:NEXT D
2190 LOCATE 19,60:PRINT "     "
2200 GOTO 2300
2210 KURANG%=INT(STANDARD%*SKILL%*KAKI%*.005)
2220 NYAWA%(TURN%)=NYAWA%(TURN%)-KURANG%
2230 IF NYAWA%(TURN%)<0 THEN NYAWA%(TURN%)=0
2240 IF WHO%=1 THEN GOTO 2300
2250 FOR C=44 TO 58
2260 LOCATE 20,C:PRINT "=>"
2270 FOR D=1 TO 500:NEXT D
2280 LOCATE 20,C:PRINT "  "
2290 NEXT C
2300 LINE (20,20)-(270,100),1,B
2310 LOCATE 7,6:PRINT "Power:";MIA%;"/";LIFE%;"    "
2320 LOCATE 9,6:PRINT "Nei:";KEMAHIRAN%;"/";SKILL%;"    "
2330 BEEP
2340 LINE (350,20)-(600,100),1,B
2350 LOCATE 7,49:PRINT "Power:";NYAWA%(TURN%);"/";ENERMYLIFE%(TURN%);"    "
2360 LOCATE 9,49:PRINT "Nei:";NEIGONG%(TURN%);"/";ENERMYPOWER%(TURN%);"    "
2370 IF WHO%=1 THEN GOTO 2410
2375 IF KADANG%=3 THEN GOTO 2410
2380 LOCATE 19,60:PRINT KURANG%
2390 FOR D=1 TO 3000:NEXT D
2400 LOCATE 19,60:PRINT "     "
2410 WHO%=0
2420 IF NYAWA%(TURN%)=0 THEN GOTO 2950
2430 FOR D=1 TO 10000:NEXT D
2440 IF NEIGONG%(TURN%)<=0 THEN GOTO 2450 ELSE GOTO 2500
2450 FOR D=1 TO 5000:NEXT D
2460 BEEP:NEIGONG%(TURN%)=NEIGONG%(TURN%)+100
2470 IF NEIGONG%(TURN%)>ENERMYPOWER%(TURN%) THEN NEIGONG%(TURN%)=ENERMYPOWER%(TURN%)
2480 APA%=1
2490 GOTO 2710
2500 RANDOMIZE TIMER
2510 PAYUNG%=INT(RND*6)+5
2520 SAYA%=INT(((1500-TARAF%(TURN%))+(1100-ENERMYPOWER%(TURN%))*PAYUNG%)*.01)
2530 NEIGONG%(TURN%)=NEIGONG%(TURN%)-SAYA%
2540 IF NEIGONG%(TURN%)<0 THEN NEIGONG%(TURN%)=0
2550 RANDOMIZE TIMER
2560 SENTIASA%=INT(RND*5)+1
2570 IF SENTIASA%<>3 THEN GOTO 2620
2580 BEEP:LOCATE 19,40:PRINT "Miss"
2590 FOR D=1 TO 6000:NEXT D
2600 LOCATE 19,40:PRINT "    "
2610 GOTO 2710
2620 JADI%=INT(TARAF%(TURN%)*ENERMYPOWER%(TURN%)*PAYUNG%*.005)
2630 MIA%=MIA%-JADI%
2640 IF MIA%<0 THEN MIA%=0
2650 IF APA%=1 THEN GOTO 2710
2660 FOR C=57 TO 45 STEP -1
2670 LOCATE 20,C:PRINT "<="
2680 FOR D=1 TO 500:NEXT D
2690 LOCATE 20,C:PRINT "  "
2700 NEXT C
2710 LINE (20,20)-(270,100),1,B
2720 LOCATE 7,6:PRINT "Power:";MIA%;"/";LIFE%;"    "
2730 LOCATE 9,6:PRINT "Nei:";KEMAHIRAN%;"/";SKILL%;"    "
2740 LINE (350,20)-(600,100),1,B
2750 BEEP:LOCATE 7,49:PRINT "Power:";NYAWA%(TURN%);"/";ENERMYLIFE%(TURN%);"    "
2760 LOCATE 9,49:PRINT "Nei:";NEIGONG%(TURN%);"/";ENERMYPOWER%(TURN%);"    "
2770 IF APA%=1 THEN GOTO 2810
2775 IF SEBTIASA%=3 THEN GOTO 2810
2780 LOCATE 19,40:PRINT JADI%
2790 FOR D=1 TO 6000:NEXT D
2800 LOCATE 19,40:PRINT "    "
2810 IF MIA%=0 THEN GOTO 2880
2820 APA%=0
2830 FOR D=1 TO 10000:NEXT D
2840 GOTO 1720
2850 '
2860 ' Lose
2870 '
2880 FOR D=1 TO 9000:NEXT D
2890 CLS:LOCATE 20,45:PRINT "You lose"
2900 KALAH%=1
2910 GOTO 1600
2920 '
2930 ' Win
2940 '
2950 FOR D=1 TO 9000:NEXT D
2960 CLS
2970 LOCATE 20,45:PRINT "You win"
2980 FOR D=1 TO 9000:NEXT D
2990 KALAH%=0
3000 IF TURN%=20 THEN GOTO 3190
3010 RANDOMIZE TIMER
3020 PAKU%=INT(RND*20)+1
3030 IF PAKU%=20 THEN REWARD$="Jin She Mi Ji":UP%=60
3040 IF PAKU%<>1 AND PAKU%<>5 AND PAKU%<>10 AND PAKU%<>15 AND PAKU%<>20 THEN GOTO 3140
3050 LOCATE 22,30:PRINT NAMA$;"you has found ";REWARD$
3060 LIFE%=LIFE%+UP%
3070 SKILL%=SKILL%+UP%
3080 FOR D=1 TO 6000:NEXT D
3090 CLS
3100 LOCATE 2,2:PRINT NAMA$;"'s power has increased until";SKILL%
3110 LOCATE 3,2:PRINT NAMA$;"'s neigong has increased until";SKILL%
3120 STANDARD%=INT(SKILL%/100)
3130 LOCATE 4,2:PRINT NAMA$;"'s skill has improved to";STANDARD%
3140 FOR D=1 TO 9000:NEXT D
3150 GOTO 1600
3160 '
3170 ' Finish
3180 '
3190 CLS
3200 LOCATE 10,10:PRINT "Congratulation!"
3210 LOCATE 11,10:PRINT NAMA$;", you have defeated all warriors."
3220 END
