10 CLS:KEY OFF
20 DIM TUNE$(4)
30 LOCATE 10,10:PRINT "MINUET"
40 FOR MEASURE=1 TO 32
50 READ NOTES$
60 TUNE$(MEASURE/8)=TUNE$(MEASURE/8)+NOTES$
70 NEXT MEASURE
80 PLAY "XTUNE$(0);XTUNE$(1);XTUNE$(2);XTUNE$(3);XTUNE$(4);"
90 DATA t110 l8 ms d4 mn o3 g a b o4 c
100 DATA d4 o3 ms g4 mn g4
110 DATA o4 ms e4 mn c d e f#
120 DATA g4 o3 ms g4 mn g4
130 DATA ms o4 c4 mn d c o3 b a
140 DATA ms b4 mn o4 c o3 b a g
150 DATA ms f#4 mn g a b g
160 DATA b4 a2
170 DATA o4 ms d4 mn o3 g a b o4 c
180 DATA d4 o3 ms g4 g4
190 DATA o4 e4 mn c d e f#
200 DATA g4 o3 ms g4 g4
210 DATA o4 c4 mn d c o3 b a
220 DATA b4 o4 c o3 b a g
230 DATA a4 b a g f#
240 DATA g2.
250 DATA o4 b4 g a b g
260 DATA a4 d c f# d
270 DATA g4 e f# g d
280 DATA c#4 o3 b o4 c# o3 a4
290 DATA a b o4 c# d e f#
300 DATA ms g4 mn f#4 e4
310 DATA ms f#4 o3 a4 o4 c#4
320 DATA mn d2
330 DATA d4 o3 g f# g4
340 DATA o4 e4 o3 g f# g4
350 DATA o4 d4 c4 o3 b4
360 DATA a g f# g a4
370 DATA d e f# g a b
380 DATA o4 c4 o3 b4 a4
390 DATA b o4 d o3 g4 f#4
400 DATA g2.
