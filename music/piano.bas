10 CLS:KEY OFF
20 LOCATE 10,10:PRINT "Piano"
30 LOCATE 11,10:PRINT "F1=C"
40 LOCATE 12,10:PRINT "F2=D"
50 LOCATE 13,10:PRINT "F3=E"
60 LOCATE 14,10:PRINT "F4=F"
70 LOCATE 15,10:PRINT "F5=G"
80 LOCATE 16,10:PRINT "F6=A"
90 LOCATE 17,10:PRINT "F7=B"
100 KEY (1) ON:KEY (2) ON:KEY (3) ON:KEY (4) ON:KEY (5) ON:KEY (6) ON:KEY (7) ON
110 ON KEY (1) GOSUB 130:ON KEY (2) GOSUB 150:ON KEY (3) GOSUB 170:ON KEY (4) GOSUB 190:ON KEY (5) GOSUB 210:ON KEY (6) GOSUB 230:ON KEY (7) GOSUB 250
120 GOTO 100
130 PLAY "O3 C"
140 RETURN
150 PLAY "O3 D"
160 RETURN
170 PLAY "O3 E"
180 RETURN
190 PLAY "O3 F"
200 RETURN
210 PLAY "O3 G"
220 RETURN
230 PLAY "O3 A"
240 RETURN
250 PLAY "O3 B"
260 RETURN
