10 '
20 ' Rotate Font Version 1.1 June 6, 1982
30 ' Rotates and stores in CHR$(128) through CHR$(255) the patterns of the characters for CHR$(0) through CHR$(127)
40 ' To use, add 128 to the value of the ASCII characters.
50 '
60 SCREEN 2:KEY OFF:CLS
70 CLEAR,20000,1000
80 DEF SEG=&HB800
90 '
100 ' This routine stores a rotated version of CHR$ (0 through 127) in CHR$ (128 through 255)
110 '
120 FOR X=O TO 127
130 PRINT X;
140 DEF SEG=&HFF00 ' Point to character pattern in ROM at &HFFA6E
150 POINTER=&HA6E+X*8 ' Pointer to start of individual pattern
160 FOR Y=0 TO 7 ' For 8 bytes
170 A(Y+1)=PEEK(POINTER+Y) ' Get pattern
180 NEXT Y ' And store in A(X+1)
190 GOSUB 350
200 DEF SEG=0
210 POKE &H7D,&HBC
220 FOR Y=0 TO 7
230 POKE &HBC00+X*8+Y,B(Y+1)
240 NEXT Y
250 NEXT X
260 DEF SEG=0
270 POKE &H7D,&HBC
280 CLS:FOR X=0 TO 255:PRINT CHR$(X);" ";:NEXT X
290 PRINT
300 INPUT "Press Enter for a driver for the graphics ";A$:GOTO 500
310 '
320 ' This subroutine takes an 8 byte pattern and rotates it 90 degrees
330 ' Input in A(1) to A(8), Output in B(1) to B(8)
340 '
350 FOR C=1 TO 8:B(C)=0:NEXT C
360 FOR C=1 TO 8
370 A=A(C)
380 FOR D=8 TO 1 STEP -1
390 A=A+A
400 B(D)=B(D)*2
410 IF A>255 THEN B(D)=B(D)+1
420 A=A MOD 256
430 NEXT D
440 NEXT C
450 RETURN
460 '
470 ' This routine is a simple driver so you can print out messages
480 ' with this programme with the lines going up the page
490 '
500 CLS:SCREEN 1:X=24:Y=1
510 LOCATE X,Y:PRINT CHR$(128+45)
520 A$=INKEY$:IF A$="" THEN GOTO 520
530 B=ASC(A$)+128
540 LOCATE X,Y:PRINT CHR$(B)
550 X=X-1:IF X=0 THE X=24:Y=Y+2
560 IF Y>40 THEN GOTO 560
570 GOTO 510
