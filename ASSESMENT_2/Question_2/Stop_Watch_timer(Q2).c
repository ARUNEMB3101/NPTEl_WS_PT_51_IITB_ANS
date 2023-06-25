#include <at89c5131.h>
#include "lcd.h"
sbit pin=P1^0;
char i,k;
long unsigned int time=0;
long unsigned int min1=0;
long unsigned int min2=0;
long unsigned int second=0;
long unsigned int second1=0;
long unsigned int second2=0;
unsigned char values[]={'0','1','2','3','4','5','6','7','8','9'};
void inctimer(void)
{
	if(time==31)
	{
		time=0;
		second++;
		}
	  else
	  {
	  }
}
	
void timer0(void) interrupt 1
{
	time++;
	inctimer();
}
void Delay_1s(void)
{
 for(k=1;k<=31;k++)
	{
		EA=1;
		ET0=1;
    TMOD =0X01;
    TH0=0X00;
    TL0=0X00;
    TR0=1;
	  while(TF0!=1)
	  {
	  }
	}
}
void main()
{
	lcd_init();
	while(1)
	{
	  while(pin!=0)
	  {
		   Delay_1s();
			if(second==60)
			{
				second=0;
				min2++;
				if(min2==10)
				 {
					 min2=0;
					 min1++;
				 }
	    }
		second1=second%10;
		second2=second/10;
		lcd_cmd(0x01);
		lcd_write_char(values[min1]);
 	  lcd_write_char(values[min2]);
		lcd_write_char(':');
		lcd_write_char(values[second2]);
		lcd_write_char(values[second1]);
	

	  }
	}

}
