10 '
20 ' Guess number
30 '
40 SCREEN 0,1:WIDTH 40:COLOR 14,1,2:CLS
50 LOCATE 2,14:PRINT "Guess Number"
60 PRINT:PRINT:PRINT
70 RANDOMIZE TIMER
80 SECRETNUM%=INT(RND*100)+1
90 PRINT "Player has to guess the number correctly in 7 tries."
100 COLOR 14,1:N=N+1:PRINT "Try #";N
110 IF N>7 THEN CLS:LOCATE 12,8:PRINT "You failed":GOTO 530
120 PRINT:INPUT "Your guess (1-100)";GUESSNUM%
130 IF GUESSNUM%>SECRETNUM% THEN GOTO 190
140 IF GUESSNUM%<SECRETNUM% THEN GOTO 250
150 IF GUESSNUM%=SECRETNUM% THEN GOTO 280
160 '
170 ' Big number
180 '
190 GOSUB 490:PRINT:PRINT
200 COLOR 10,1:PRINT "Number is too large. Try again!"
210 GOTO 100
220 '
230 ' Small number
240 '
250 GOSUB 490:PRINT:PRINT
260 COLOR 13,1:PRINT "Number is too small. Try again!"
270 GOTO 100
280 CLS:COLOR 12,1,2
290 LOCATE 10,8:PRINT " ***   ***  ****  ****  *****  ***  *****"
300 LOCATE 11,8:PRINT "*   * *   * *   * *   * *     *   *   *  "
310 LOCATE 12,8:PRINT "*     *   * *   * *   * *     *       *  "
320 LOCATE 13,8:PRINT "*     *   * ****  ****  ****  *       *  "
330 LOCATE 14,8:PRINT "*     *   * *   * *   * *     *       *  "
340 LOCATE 15,8:PRINT "*   * *   * *   * *   * *     *   *   *  "
350 LOCATE 16,8:PRINT " ***   ***  *   * *   * *****  ***    *  "
480 GOTO 570
490 FOR S=100 TO 40 STEP -1/5
500 SOUND S,1/S
510 NEXT S
520 RETURN
530 PLAY "MBT90 O2 G-4 D+4 O1 B4 G+2"
540 LOCATE 22,1:PRINT "Press any key..."
550 IF INKEYS$="" THEN GOTO 590
560 WIDTH 80:END
570 PLAY "MBT120 O3 C4 F3 P4 C8 C8 C8 F2"
580 LOCATE 22,1:PRINT "Press any key..."
590 IF INKEY$="" THEN GOTO 590
600 WIDTH 80:END
