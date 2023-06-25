#include <at89c5131.h>
sbit pin=P1^6;
void delay1(void);
void delay2(void);
void main()
{
	P1=0xFF;
	while(1)
	{
		P1=0X00;
		delay2();
		P1=0XFF;
		delay1();
	}
}
void delay1()
{
	TMOD =0X10;
  TH1=0XE0;
	TL1=0XC0;
	TR1=1;
	while(TF1!=1)
	{
	}
	TR1=0;
	TF1=0;
}
void delay2()
{
	TMOD=0X10;
	TH1=0XA2;
	TL1=0X40;
	TR1=1;
	while(TF1!=1)
	{
	}
	TR1=0;
	TF1=0;
}