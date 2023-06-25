#include <at89c5131.h>
void uart_init(void)
{
	TMOD = 0X20;
	TH1=0XF3;
	SCON = 0x50;
	TR1=1;
}
void send_char(char *s)
{
 while(*s!='\0')
 {
	 SBUF=*s;
	 while(TI!=1);
	 TI=0;
	 *s++;
 }
 
}
void main()
{
	uart_init();
	send_char(" IIT BOMBAY");
	while(1);
}
