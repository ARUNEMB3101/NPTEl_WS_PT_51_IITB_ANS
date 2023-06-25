#include <at89c5131.h>
sbit pin1=P1^4;
sbit key1=P1^0;
sbit pin2=P1^5;
sbit key2=P1^1;
sbit pin3=P1^6;
sbit key3=P1^2;
sbit pin4=P1^7;
sbit key4=P1^3;
void main()
{
	P1 = 0x0f;
	while(1)
	{
	if(key1 == 1)
	{
		pin1 = 1;
	}
	else
	{
		pin1 = 0;
	}
  if(key2 == 1)
	{
		pin2 = 1;
	}
	else
	{
		pin2 = 0;
	}
	if(key3 == 1)
	{
		pin3 = 1;
	}
	else
	{
		pin3 = 0;
	}
	if(key4 == 1)
	{
		pin4 = 1;
	}
	else
	{
		pin4 = 0;
	}
	
}

}   