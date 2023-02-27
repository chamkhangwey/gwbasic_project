10 '
20 ' Trigonometry Calculation
30 '
40 CLS
50 PRINT "The use of Cosine, Sine and Tangent."
60 PRINT:PRINT
70 PRINT "There are three types of trigonometry using Cosine, Sine and Tangent"
80 INPUT "Choose one of them. Use capital letters:";A$
90 IF A$="COSINE" THEN GOTO 120
100 IF A$="SINE" THEN GOTO 160
110 IF A$="TANGENT" THEN GOTO 200 ELSE GOTO 60
120 PRINT
130 INPUT "Input an angle in radians:";F
140 PRINT "The Cosine of the angle is ";COS(F)"."
150 END
160 PRINT
170 INPUT "Input an angle in radians:";Y
180 PRINT "The Sine of the angle is ";SIN(Y)"."
190 END
200 PRINT
210 INPUT "Input an angle in radians:";X
220 PRINT "The Tangent of the angle is ";TAN(X)"."
230 END
