10 '
20 ' Beams Version1.1 28 July 1982
30 '
40 SCREEN 2:KEY OFF:CLS
50 LINE (0,100)-(225,199):LINE -(450,100):LINE -(225,0):LINE -(0,100)
60 LINE (54,100)-(225,175):LINE -(396,100):LINE -(225,24):LINE -(54,100)
70 LINE (108,100)-(225,150):LINE -(342,100):LINE -(225,48):LINE -(108,100)
80 LINE (225,0)-(225,24):LINE (225,199)-(225,175)
90 LINE (108,100)-(54,100):LINE (396,100)-(342,100)
100 LINE (54,100)-(26,88)
110 LINE (396,100)-(422,112)
120 LINE (225,48)-(251,36)
130 LINE (225,151)-(199,163)
140 LINE (251,36)-(251,12)
150 LINE (199,163)-(199,187)
160 LOCATE 22,50:PRINT "I.B.M.  SOFTWARE"
170 LINE (392,177)-(520,177)
180 LOCATE 13,28:PRINT "*";:FOR X=1 TO 50:NEXT X
190 LOCATE 13,28:PRINT " ";:FOR X=1 TO 50:NEXT X
200 GOTO 180
