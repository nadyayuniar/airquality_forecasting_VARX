proc import datafile='/home/u48757152/sas.xlsx'
	dbms=xlsx replace
	out=datav;
	getnames=yes;
run;

proc varmax data=datav;
model CO PM10 NO2 = D1-D7 /p=(1,2,3,4,5,48,49,
50,51,52,53,54,96,97,98,99,100,101,102) lagmax=60 xlag=5
noint minic=(p=60) method=ls
print=(corry parcoef pcorr pcancorr roots diagnose);
output lead=1488 out=resi;
restrict AR(51,2,3)=0, XL(5,3,7)=0, XL(1,2,7)=0, AR(101,3,1)=0, XL(1,1,1)=0,
		 AR(51,2,1)=0, XL(3,1,6)=0, XL(5,2,7)=0, AR(2,2,3)=0, AR(53,2,1)=0,
		 AR(101,3,2)=0, AR(5,3,1)=0, AR(5,3,2)=0, AR(53,3,2)=0, AR(52,1,3)=0,
		 AR(96,2,3)=0, AR(101,2,2)=0, XL(5,1,6)=0, XL(2,1,2)=0, AR(49,3,1)=0,
		 XL(5,2,5)=0, XL(5,1,5)=0, XL(4,3,4)=0, AR(52,3,2)=0, AR(1,1,3)=0,
		 AR(5,1,1)=0, AR(4,1,1)=0, AR(4,1,3)=0, XL(2,3,6)=0, AR(4,2,3)=0,
		 XL(2,2,7)=0, XL(3,2,5)=0, AR(2,1,2)=0, AR(97,3,3)=0, XL(0,1,2)=0,
		 XL(5,3,5)=0, XL(2,2,5)=0, XL(3,2,7)=0, AR(101,2,3)=0, AR(50,2,3)=0,
		 AR(98,3,2)=0, XL(1,1,2)=0, XL(4,3,7)=0, AR(4,2,1)=0, AR(49,3,3)=0,
		 AR(97,2,3)=0, XL(1,1,4)=0, AR(99,3,3)=0, XL(1,3,6)=0, XL(1,1,5)=0,
		 XL(3,2,6)=0, XL(1,3,7)=0, AR(100,2,3)=0, AR(1,2,3)=0, XL(4,1,4)=0,
		 AR(5,1,2)=0, AR(48,2,3)=0, XL(4,2,5)=0, AR(2,3,2)=0, XL(1,3,1)=0,
		 AR(50,2,1)=0, XL(2,1,1)=0, XL(0,3,6)=0, AR(51,1,2)=0, AR(50,1,2)=0,
		 XL(1,3,3)=0, AR(99,2,3)=0, AR(98,2,3)=0, XL(5,1,1)=0, XL(3,1,2)=0,
		 AR(48,3,2)=0, XL(5,3,3)=0, AR(102,1,2)=0, AR(96,1,3)=0, AR(97,1,3)=0,
		 AR(51,1,3)=0, AR(52,1,1)=0, AR(102,3,2)=0, AR(54,3,1)=0, XL(4,1,5)=0,
		 XL(4,3,5)=0, XL(3,3,6)=0, XL(4,3,3)=0, XL(0,3,3)=0, AR(51,3,2)=0,
		 AR(101,2,1)=0, XL(2,1,4)=0, AR(101,3,3)=0, XL(0,3,2)=0, AR(101,1,1)=0,
		 XL(3,1,1)=0, XL(5,3,6)=0, AR(50,1,1)=0, XL(5,1,2)=0, XL(1,3,2)=0,
		 XL(3,3,4)=0, AR(53,3,3)=0, AR(52,3,3)=0, AR(102,3,1)=0, XL(1,1,6)=0,
		 AR(100,1,3)=0, AR(99,1,3)=0, AR(2,3,1)=0, XL(5,2,3)=0, XL(4,1,3)=0,
		 AR(96,2,2)=0, AR(102,2,3)=0, XL(0,1,4)=0, XL(4,3,6)=0, AR(97,3,2)=0,
		 AR(96,3,2)=0, XL(0,3,1)=0, AR(50,1,3)=0, XL(2,1,7)=0, XL(5,2,6)=0,
		 AR(52,2,2)=0, AR(51,2,2)=0, AR(100,1,2)=0, AR(54,1,1)=0, XL(4,2,3)=0,
		 XL(4,2,7)=0, AR(54,2,1)=0, XL(1,2,5)=0, XL(3,2,4)=0, XL(1,2,3)=0,
		 XL(5,2,2)=0, XL(5,3,1)=0, AR(97,2,1)=0, AR(98,1,2)=0, AR(100,1,1)=0,
		 AR(3,1,3)=0, AR(102,1,3)=0, AR(102,3,3)=0, AR(50,3,3)=0, AR(49,2,1)=0,
		 AR(53,1,3)=0, XL(0,2,7)=0, AR(3,2,1)=0, XL(3,1,5)=0, XL(0,1,5)=0,
		 AR(99,1,1)=0, XL(3,2,3)=0, XL(3,2,2)=0, XL(1,2,2)=0, XL(1,2,6)=0,
		 XL(5,2,4)=0, AR(1,1,2)=0, AR(1,3,2)=0, AR(3,3,2)=0, AR(3,1,2)=0,
		 XL(3,3,3)=0, XL(3,1,3)=0, XL(4,3,1)=0, XL(4,1,1)=0, AR(49,1,2)=0,
		 AR(48,1,2)=0, AR(4,1,2)=0, AR(98,1,3)=0, XL(3,2,1)=0, XL(2,2,6)=0,
		 AR(48,1,3)=0, AR(100,2,1)=0, XL(2,3,7)=0, AR(5,3,3)=0, XL(0,3,4)=0,
		 AR(3,3,3)=0, AR(99,3,1)=0, XL(3,3,5)=0, AR(52,3,1)=0, XL(1,1,7)=0,
		 XL(0,1,3)=0, XL(3,3,7)=0, XL(2,1,5)=0, XL(3,1,4)=0, XL(4,2,1)=0,
		 XL(5,3,2)=0, AR(49,2,2)=0, AR(50,3,1)=0, AR(101,1,3)=0, AR(49,1,3)=0,
		 AR(49,1,1)=0, AR(51,1,1)=0, AR(48,3,1)=0, AR(96,3,1)=0, AR(97,3,1)=0,
		 XL(5,2,1)=0, XL(1,2,4)=0, XL(0,3,7)=0, AR(54,1,2)=0, AR(100,3,3)=0,
		 XL(0,1,6)=0, AR(48,2,1)=0, AR(49,2,3)=0, AR(52,2,3)=0, AR(53,2,3)=0,
		 XL(2,3,5)=0, XL(5,1,4)=0, XL(5,3,4)=0, AR(99,1,2)=0, AR(101,1,2)=0,
		 XL(2,2,3)=0, XL(1,3,4)=0, AR(98,2,1)=0, XL(2,3,4)=0, XL(1,2,1)=0,
		 AR(53,2,2)=0, AR(5,2,1)=0, XL(1,3,5)=0, XL(2,1,6)=0, XL(0,1,1)=0,
		 AR(3,3,1)=0, XL(2,3,1)=0, AR(4,3,2)=0, AR(99,2,2)=0, AR(100,2,2)=0,
		 AR(54,2,2)=0, AR(5,2,3)=0, AR(3,2,3)=0, AR(2,2,1)=0, AR(2,1,3)=0,
		 AR(5,1,3)=0, AR(102,2,2)=0, XL(4,3,2)=0, XL(4,1,2)=0;
run;

proc export data=resi
	outfile='/home/u48757152/Residual VARX subset 2 sebulan.xlsx'
	dbms=xlsx replace;
run;