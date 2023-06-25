#include <at89c5131.h>
long unsigned int x=14571;
long unsigned int y=8636;
long unsigned int x0,x1,y1,y0,z0,z1,z2,z3,z;
void main()
{
  TMOD=0X01;
	TH0=0X00;
	TL0=0X00;
	TR0=1;
	x1=x/10;
  x0=x%10;
  y1=y/10;
	y0=y%10;
	z0=x0*y0;
	z1=x0*y1;
	z2=x1*y0;
	z3=x1*y1;
	z=z0+(z1+z2)*10+z3*100;
	TR0=0;
	while(1);
}