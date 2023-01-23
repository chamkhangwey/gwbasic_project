10 '
20 ' Draw something
30 '
40 clear,,3000
50 '
60 ' Start with a clean slate
70 '
80 screen 2
90 key off
100 gosub 260
110 cls
120 '
130 ' Fill screen with lots of vertical lines
140 '
150 for x=1 to 640 step 2
160 line (x,200*rnd)-(x,200*rnd)
170 next x
180 '
190 ' Get the paint brush out
200 '
210 paint (320,100)
220 '
230 ' One more time
240 '
250 run
260 '
270 ' Subroutine: Thoroughly randomise the random numbers
280 randomize val(mid$(time$,4,2)+right$(time$,2))
290 temp$=time$
300 while temp$=time$
310 randomize 65000!*rnd-32500
320 wend
330 return
