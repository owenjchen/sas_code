*pf18e05;

%macro listing(custtype);
	proc print data=orion.customer3 noobs;
	run;
%mend listing;

%listing(2010)