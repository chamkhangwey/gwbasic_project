10 CLS:KEY OFF
20 PRINT "Eye Test"
30 PRINT "Computer will display a series of numbers. The numbers will disappear after 2 seconds."
40 PRINT
50 PRINT "You have to key in the number correctly."
60 FOR X=1 TO 50000!:NEXT X
70 D%=5000
80 RANDOMIZE TIMER
90 R%=R%+1
100 Y!=INT(100000!*RND)
110 PRINT Y!
120 FOR C=1 TO D%:NEXT C
130 CLS
140 INPUT "Key in the number";J!
150 IF J!=Y! THEN GOTO 220
160 R%=R%-1
170 PRINT "Wrong! I've told you to look at the number carefully but you won't listen!"
180 PRINT "The correct number is";Y!
190 PRINT "Score:";R%
200 FOR Z=1 TO 50000!:NEXT Z
210 GOTO 80
220 PRINT "Congratulation! You key in the correct number!"
230 PRINT "Score:";R%
240 FOR A=1 TO 50000!:NEXT A
250 D%=D%-500
260 IF D%=0 THEN GOTO 280
270 GOTO 80
280 PRINT "Your final score is";R%
290 END
