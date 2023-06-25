#include <at89c5131.h>
#include "lcd.h"
#define ms_delay msdelay
void main()
{
	unsigned char ch,ch1,swap,arr[6],i=1,temp,sml,str,prnt,ind,inc=0,j,k;
	lcd_init();
	lcd_write_string(" START PROGRAM  ");
	P1=0x0F;
	ms_delay(5000);
	lcd_cmd(0x01);
	lcd_write_string("  FIRST INPUT   ");
	ms_delay(5000);
	while(i!=6)
	{
	P1=P1&0X0F;
	temp=P1;
	P1=0X00;
	ms_delay(1000);
  P1=temp;
	arr[i]=P1;
  ch=P1&0X0F;
	ch1=P1&0XF0;
	ch=ch<<4;
	ch1=ch1>>4;q
	swap=ch|ch1;
	if(i==5)
	{
		P1=swap;
		lcd_cmd(0X01);
		lcd_write_string("SORTING...");
		ms_delay(5000);
		P1=0X0F;
		lcd_cmd(0X01);
		lcd_write_string("    SORTING     ");
		lcd_cmd(0XC0);
		lcd_write_string("   COMPLETED    ");
		for(j=1;j<6;j++)
		{
			for(k=j+1;k<6;k++)
			{
			if(arr[j]>arr[k])
			{
				str=arr[j];
				arr[j]=arr[k];
				arr[k]=str;
			}			
		}			
			
	}
		for(j=1;j<6;j++)
	{
  prnt=arr[j];
  ch=prnt&0X0F;
	ch1=prnt&0XF0;
	ch=ch<<4;
	ch1=ch1>>4;
	swap=ch|ch1;
	P1=swap;
	ms_delay(5000);
	P1=0X00;
	ms_delay(1000);
	}
	P1=0XFF;
	lcd_cmd(0X01);
	lcd_write_string("  NUMBER TO BE  ");
	lcd_cmd(0XC0);
	lcd_write_string("    SEARCHED    ");
	ms_delay(5000);
	ch=P1&0X0F;
	lcd_cmd(0X01);
	P1=0X00;
	ms_delay(1000);
	for(j=1;j<6;j++)
	{
		if(arr[j]==ch)
		{
			inc++;
			lcd_write_string("  THE INDEX IS  ");
			ind=j<<4;
			P1=ind;
			while(1)
			{
			}
		}
	}
	if(inc==0)
	{
		lcd_write_string("     NUMBER    ");
		lcd_cmd(0XC0);
		lcd_write_string("   NOT FOUND   ");
		while(1)
		{
		}
	}
	
}
	lcd_cmd(0X01);
	lcd_write_string("    NEXT INPUT   ");
  P1=swap;
	ms_delay(5000);
  P1=0x0F;
	i++;
	
}
	
	
	
}