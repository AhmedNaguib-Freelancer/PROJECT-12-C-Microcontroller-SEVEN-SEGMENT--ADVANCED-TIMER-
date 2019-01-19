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