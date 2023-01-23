10 '
20 ' Draw something
30 '
40 CLEAR,,3000
50 '
60 ' Start with a clean slate
70 '
80 SCREEN 2
90 KEY OFF
100 GOSUB 260
110 CLS
120 '
130 ' Fill screen with lots of vertical lines
140 '
150 FOR X=1 TO 640 STEP 2
160 LINE (X,200*RND)-(X,200*RND)
170 NEXT X
180 '
190 ' Get the paint brush out
200 '
210 PAINT (320,100)
220 '
230 ' One more time
240 '
250 RUN
260 '
270 ' Subroutine: Thoroughly randomise the random numbers
280 RANDOMIZE VAL(MID$(TIME$,4,2)+RIGHT$(TIME$,2))
290 TEMP$=TIME$
300 WHILE TEMP$=TIME$
310 RANDOMIZE 65000!*RND-32500
320 WEND
330 RETURN
