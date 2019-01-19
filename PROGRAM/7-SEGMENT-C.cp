#line 1 "C:/Users/only try/Desktop/PROJECT 12-C Microcontroller (SEVEN SEGMENT)/PROGRAM/7-SEGMENT-C.c"
void main() {
TRISB=0;
PORTB=0;
while (1)
{
 PORTB.F0=1;
 delay_ms(60);
 PORTB.F0=0;
 delay_ms(60);
}
}
