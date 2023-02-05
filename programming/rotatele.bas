10 '
20 ' Rotate A Letter Ver 1.1 Sept 11, 1982
30 '
40 ' When used with 'Rotate-Font', this programme will print a
50 ' 7 page message that will print up the page with all
60 ' characters on their side
70 ' to use change these lines (650 through the end of the listing)
80 ' with the last lines in rotate-font (lines 720 on)
90 '
100 ' This routine is a simple driver so you can print out messages
110 ' with this programme with the lines going up the page
120 '
130 ON ERROR GOTO 240
140 CLS:SCREEN 1:X=24:Y=1
150 READ Z$:FOR M=1 TO 24
160 Q$=MID$(Z$,M,1)
170 B=ASC(Q$)+128
180 LOCATE X,Y:PRINT CHR$(B);
190 X=X-1:IF X=0 THEN X=24:Y=Y+2
200 IF Y>40 THEN GOTO 230
210 NEXT M
220 GOTO 150
230 C$=INKEY$:IF C$="" THEN 230 ELSE 140
240 GOTO 240
250 '
260 ' Top of page #1
270 '
280 DATA "1                       ","2                       "
290 DATA "3                       ","4                       "
300 DATA "5                       ","6                       "
310 DATA "7                       ","8                       "
320 DATA "9                       ","10                      "
330 DATA "11                      ","12                      "
340 DATA "13                      ","14                      "
350 DATA "15                      ","16                      "
360 DATA "17                      ","18                      "
370 DATA "19                      ","Press Enter to continue "
380 '
390 ' Top of page #2
400 '
410 DATA "                        ","                        "
420 DATA "                        ","                        "
430 DATA "                        ","                        "
440 DATA "                        ","                        "
450 DATA "                        ","                        "
460 DATA "                        ","                        "
470 DATA "                        ","                        "
480 DATA "                        ","                        "
490 DATA "                        ","                        "
500 DATA "                        ","Press Enter to continue "
510 '
520 ' Top of page #3
530 '
540 DATA "                        ","                        "
550 DATA "                        ","                        "
560 DATA "                        ","                        "
570 DATA "                        ","                        "
580 DATA "                        ","                        "
590 DATA "                        ","                        "
600 DATA "                        ","                        "
610 DATA "                        ","                        "
620 DATA "                        ","                        "
630 DATA "                        ","Press Enter to continue "
640 '
650 ' Top of page #4
660 '
670 DATA "                        ","                        "
680 DATA "                        ","                        "
690 DATA "                        ","                        "
700 DATA "                        ","                        "
710 DATA "                        ","                        "
720 DATA "                        ","                        "
730 DATA "                        ","                        "
740 DATA "                        ","                        "
750 DATA "                        ","                        "
760 DATA "                        ","Press Enter to continue "
770 '
780 ' Top of page #5
790 '
800 DATA "                        ","                        "
810 DATA "                        ","                        "
820 DATA "                        ","                        "
830 DATA "                        ","                        "
840 DATA "                        ","                        "
850 DATA "                        ","                        "
860 DATA "                        ","                        "
870 DATA "                        ","                        "
880 DATA "                        ","                        "
890 DATA "                        ","Press Enter to continue "
900 '
910 ' Top of page #6
920 '
930 DATA "                        ","                        "
940 DATA "                        ","                        "
950 DATA "                        ","                        "
960 DATA "                        ","                        "
970 DATA "                        ","                        "
980 DATA "                        ","                        "
990 DATA "                        ","                        "
1000 DATA "                        ","                        "
1010 DATA "                        ","                        "
1020 DATA "                        ","Press Enter to continue "
1030 '
1040 ' Top of page #7
1050 '
1060 DATA "                        ","                        "
1070 DATA "                        ","                        "
1080 DATA "                        ","                        "
1090 DATA "                        ","                        "
1100 DATA "                        ","                        "
1110 DATA "                        ","                        "
1120 DATA "                        ","                        "
1130 DATA "                        ","                        "
1140 DATA "                        ","                        "
1150 DATA "                        ","Press Enter to continue "
