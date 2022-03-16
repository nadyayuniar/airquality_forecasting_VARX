proc import datafile='/home/u48757152/sas.xlsx'
	dbms=xlsx replace
	out=datav;
	getnames=yes;
run;

proc varmax data=datav;
model CO PM10 NO2 = D1-D7 /p=(1,2,3,4,5,48,49,
50,51,52,53,54,96,97,98,99,100,101,102) lagmax=60 xlag=1
noint minic=(p=60) method=ls
print=(corry parcoef pcorr pcancorr roots diagnose);
output lead=336 out=resi;
run;

proc export data=resi
	outfile='/home/u48757152/Residual VARX subset 1.xlsx'
	dbms=xlsx replace;
run;