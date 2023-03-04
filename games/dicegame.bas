10 '
20 '
30 '
40 CLS:KEY OFF
50 PRINT "======================================"
60 PRINT
70 PRINT "  All Rights Reserved. Prohibit from  "
80 PRINT "  copying any part of  "
90 PRINT "  this programme with  "
100 PRINT "  any methods  "
110 PRINT
120 PRINT "====================================="
130 PRINT "Guess the Dice"
140 PRINT "You need to input two numbers for two dice values"
150 PRINT "Computer will evaluete your input."
160 PRINT "You have four guesses."
170 PRINT "Good luck!"
180 RANDOMIZE TIMER
190 Y%=INT(6*RND)+1
200 RANDOMIZE TIMER
210 Z%=INT(6*RND)+1
220 FOR P=1 TO 4
230 INPUT "Guess 2 dice";W%,Q%
240 IF W%=Y% AND Q%=Z% THEN GOTO 390
250 T=4-P
260 IF T=0 THEN GOTO 370
270 PRINT "Incorrect! Try again! You have";T;"guesses."
280 IF W%<Y% AND Q%<Z% THEN PRINT "Both of your dice guesses are smaller.":GOTO 360
290 IF W%<Y% AND Q%=Z% THEN PRINT "Your first dice guess is smaller.":GOTO 360
300 IF W%>Y% AND Q%>Z% THEN PRINT "Both of your dice guesses are larger.":GOTO 360
310 IF W%>Y% AND Q%=Z% THEN PRINT "Your first dice guess is larger.":GOTO 360
320 IF W%<Y% AND Q%>Z% THEN PRINT "Your first dice guess is smaller, your second dice guess is larger.":GOTO 360
330 IF W%=Y% AND Q%<Z% THEN PRINT "Your second dice guess is smaller.":GOTO 360
340 IF W%>Y% AND Q%<Z% THEN PRINT "Your first dice guess is larger, your second dice guess is smaller.":GOTO 360
350 IF W%=Y% AND Q%>Z% THEN PRINT "Your second dice guess is larger.":GOTO 360
360 NEXT P
370 PRINT "End of guessing. The correct dice numbers are";Y%;"and";Z%
380 END
390 PRINT "Congratulation! You guess correctly! Want to try again"
400 INPUT "(Y/N)";B$
410 IF B$="Y" OR B$="y" THEN GOTO 40
420 CLS
430 PRINT "====================================="
440 PRINT
450 PRINT "  Created by: Cham Khang Wey"
460 PRINT
470 PRINT "====================================="
480 END
