10 '
20 ' Fire the torpedo to enermy ship
30 '
40 CLS:RANDOMIZE TIMER
50 LET DISTANCE%=INT(2001*RND+3000)
60 PRINT "Enemy ship detected in around 3000m to 5000m"
70 PRINT "to the north from here."
80 PRINT:PRINT "Destroy the ship!"
90 PRINT "You have 9 chances to destroy that ship."
100 FOR TRY=1 TO 9
110 INPUT "Set the distance in metres";DIST%
120 IF DIST%=DISTANCE% THEN GOTO 180
130 IF DIST%>DISTANCE% THEN PRINT "Too far.":GOTO 150
140 PRINT "Too short."
150 PRINT:NEXT TRY
160 PRINT "You are out of torpedo. Sorry!"
170 GOTO 220
180 PRINT:PRINT "Congratulation! Your hit is accurate!"
190 PRINT "Enemy ship is destroyed with try #";TRY
200 PRINT:INPUT "Try again (Y/N)";Y$
210 IF Y$="Y" OR Y$="y" THEN GOTO 40 ELSE GOTO 230
220 PRINT "The correct distance is";DISTANCE%:GOTO 200
230 END
