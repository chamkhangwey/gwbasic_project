10 '
20 '
30 '
40 COLOR 5,7
50 RANDOMIZE TIMER
60 TARGETNUMBER%=INT(RND*99)
70 CLS
80 INPUT "Guess the number (0-99)";C%
90 IF C%<TARGETNUMBER% THEN GOTO 120
100 IF C%=TARGETNUMBER% THEN GOTO 200
110 IF C%>TARGETNUMBER% THEN GOTO 160
120 PRINT
130 PRINT C%;"is smaller than the number."
140 PRINT
150 GOTO 80
160 PRINT
170 PRINT C%;"is larger than the number."
180 PRINT
190 GOTO 80
200 PRINT
210 PRINT
220 PRINT "Your number is correct! You are an intelligent, clever, and genius person!"
230 PRINT
240 INPUT "Another round (Y/N)";Y$
250 IF Y$="Y" OR Y$="y" THEN PRINT:GOTO 40
260 END
