10 CLS:KEY OFF
20 LOCATE 10,20:PRINT "Prime Number"
30 LOCATE 15.2:INPUT "Enter a number";NUMBER%
40 IF NUMBER%=1 THEN GOTO 130
50 IF NUMBER%<=0 THEN GOTO 160
60 FOR TESTINT=2 TO NUMBER%-1
70 PRIME=NUMBER%/TESTINT
80 IF PRIME=INT(NUMBER%/TESTINT) THEN GOTO 130
90 NEXT TESTINT
100 LOCATE 17,20:PRINT "Number";NUMBER%;"is a prime number."
110 FOR Q=1 TO 10000:NEXT Q
120 CLS:GOTO 30
130 LOCATE 17,20:PRINT "Number";NUMBER%;"is not a prime number."
140 FOR E=1 TO 10000:NEXT E
150 CLS:GOTO 30
160 LOCATE 17,20:PRINT "Technical Error.""
170 FOR Q=1 TO 9000:NEXT Q
180 CLS:GOTO 30
