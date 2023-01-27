10 '
20 ' Foot Adventure
30 '
40 SCREEN 0:KEY OFF:CLS
50 SCORE%=0
60 PLACE$=""
70 PRINT "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
80 PRINT "$$                                   $$"
90 PRINT "$$   #####    ###     ###    #####   $$"
100 PRINT "$$   #       #   #   #   #     #     $$"
110 PRINT "$$   ###     #   #   #   #     #     $$"
120 PRINT "$$   #       #   #   #   #     #     $$"
130 PRINT "$$   #        ###     ###      #     $$"
140 PRINT "$$                                   $$"
150 PRINT "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
160 PRINT "Welcome to FOOT programme!"
170 PRINT
180 PRINT "You need to choose one of the four below."
190 PRINT
200 PRINT "1. Rome"
210 PRINT "2. China"
220 PRINT "3. Greece"
230 PRINT "4. Indus"
240 INPUT "Your Choice (1-4)";CHOICE%
250 IF CHOICE%<1 OR CHOICE%>4 THEN GOTO 240
260 IF CHOICE%=1 THEN PLACE$="Rome":GOTO 1030
270 IF CHOICE%=2 THEN PLACE$="China":GOTO 3030
280 IF CHOICE%=3 THEN PLACE$="Greece":GOTO 5030
290 IF CHOICE%=4 THEN PLACE$="Indus":GOTO 7030
1000 '
1010 ' Rome
1020 '
1030 SIZE%=3
1040 DIM QUESTION$(SIZE%,10)
1050 QUESTION$(0,0)="According to legend, the founder of Ancient Rome was raised by a she-wolf in her lair in Palatine Hill. Her name was?"
1060 QUESTION$(0,1)="(A. Lupa B. Luna C. Luca D. Luka)"
1070 QUESTION$(0,2)="A"
1080 QUESTION$(1,0)="What was the names of the founders of Ancient Rome?"
1090 QUESTION$(1,1)="(A. Castor & Pollux B. Apollo & Artemis C. Romulus & Remus D. Osiris & Isis)"
1100 QUESTION$(1,2)="C"
1110 QUESTION$(2,0)="According to another legend, Aeneas, the Trojan prince, married the daughter of King Latinus and became the king of Rome. What was the name of the daughter?"
1120 QUESTION$(2,1)="(A. Lavinia B. Lomviani C. Lithuania D. Luvanda)"
1130 QUESTION$(2,2)="A"
1140 GOTO 8030
3000 '
3010 ' China
3020 '
3030 SIZE%=1
3040 DIM QUESTION$(SIZE%,10)
3050 QUESTION$(0,0)="ZZZ"
3060 QUESTION$(0,1)="(A. X B. Y C. Z D. V)"
3070 QUESTION$(0,2)="C"
3080 GOTO 8030
5000 '
5010 ' Greece
5020 '
5030 SIZE%=1
5040 DIM QUESTION$(SIZE%,10)
5050 QUESTION$(0,0)="VVV"
5060 QUESTION$(0,1)="(A. X B. Y C. Z D. V)"
5070 QUESTION$(0,2)="A"
5080 GOTO 8030
7000 '
7010 ' Indus
7020 '
7030 SIZE%=1
7040 DIM QUESTION$(SIZE%,10)
7050 QUESTION$(0,0)="WWWW"
7060 QUESTION$(0,1)="(A. X B. Y C. Z D. V)"
7070 QUESTION$(0,2)="D"
7080 GOTO 8030
8000 '
8010 ' Question loop
8020 '
8030 CLS
8040 PRINT "Welcome to ";PLACE$
8050 FOR LOOP=0 TO SIZE%-1
8060 CORRECTANSWER%=0
8070 PRINT "Question #";LOOP+1;"(";PLACE$;")"
8080 PRINT "------------------"
8090 PRINT "QUESTION: ";QUESTION$(LOOP,0)
8100 PRINT "OPTIONS: ";QUESTION$(LOOP,1)
8110 INPUT "ANSWER (A-D)";ANSWER$
8120 IF ANSWER$<>"A" AND ANSWER$<>"a" AND ANSWER$<>"B" AND ANSWER$<>"b" AND ANSWER$<>"C" AND ANSWER$<>"c" AND ANSWER$<>"D" AND ANSWER$<>"d" THEN GOTO 8110
8130 IF ASC(ANSWER$)=ASC(QUESTION$(LOOP,2)) OR ASC(ANSWER$)=ASC(QUESTION$(LOOP,2))+32 THEN CORRECTANSWER%=1
8140 IF CORRECTANSWER%=1 THEN SCORE%=SCORE%+1
8150 IF CORRECTANSWER%=1 THEN PRINT "Correct!" ELSE PRINT "Wrong!"
8160 PRINT
8170 NEXT LOOP
8180 GOTO 9000
9000 PRINT "Your score is ";SCORE%;"/";SIZE%
9010 END
