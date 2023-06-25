#include <at89c5131.h>

sbit pin1 = P1^6;
sbit pin2 = P1^7;
void timer0(void) interrupt 1
	
{
	if(pin1==0)
	{
   pin1=1;
	}
else
{
	pin1=0;
}	
 //TF0=0;
	TH0 = 0XF8;
	TL0 = 0x30;
  TR0=1;	
}

void timer1(void) interrupt 3	
{
		if(pin2==0)
	{
   pin2=1;
	}
 else
 {
	pin2=0;
 }	
  
  //TF1=0;
  TH1=0XF4;
	TL1=0X48;	
  TR1 = 1;   
}
void  main()
{
	TMOD = 0x11; 
	ET0 = 1; 
	EA = 1;  
	ET1=1;
	TH0 = 0XF8;
	TL0 = 0x30;
	TH1=0XF4;
	TL1=0X48;
	pin1=0;
	pin2=0;
	TR0 = 1; 
	TR1=1;
  while(1)
	{
	}
}