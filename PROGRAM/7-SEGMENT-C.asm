
_main:

;7-SEGMENT-C.c,1 :: 		void main() {
;7-SEGMENT-C.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;7-SEGMENT-C.c,3 :: 		PORTB=0;
	CLRF       PORTB+0
;7-SEGMENT-C.c,4 :: 		while (1)
L_main0:
;7-SEGMENT-C.c,6 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;7-SEGMENT-C.c,7 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
;7-SEGMENT-C.c,8 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;7-SEGMENT-C.c,9 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
;7-SEGMENT-C.c,10 :: 		}
	GOTO       L_main0
;7-SEGMENT-C.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
