10 '
20 '
30 '
40 SCREEN 1:COLOR 0,2:CLS
50 KEY OFF
60 FOR X=1 TO 300 STEP 10
70 CIRCLE (X,90),20,3,-.1,-5.9
80 PAINT (X,90),3
90 SOUND X*50,1/100
100 CLS
110 NEXT X
120 GOTO 40
