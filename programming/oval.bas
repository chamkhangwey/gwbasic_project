10 '
20 ' Draw an oval shape
30 '
40 SCREEN 1:KEY OFF:CLS
50 FOR T=0 TO 6.29 STEP .05
60 X=160+100*COS(T):Y=100+30*SIN(T)
70 PSET(X,Y)
80 NEXT T
90 END
