10 '
20 ' Draw a circle with ray
30 '
40 SCREEN 1,0:KEY OFF
50 COLOR 0,1:CLS
60 FOR S=0 TO 6.3 STEP .06
70 A=160+84*COS(S):B=100+70*SIN(S)
80 DRAW "nm=a;,=b;"
90 NEXT S
100 END
