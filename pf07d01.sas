libname orionx pcfiles path="&path/sales.xls";

/* options validvarname=v7; */  /* for Enterprise Guide */

proc contents data=orionx._all_;
run;

proc print data=orionx.'Australia$'n;
run;

proc print data=orionx.'Australia$'n noobs;
   where Job_Title ? 'IV';
	var Employee_ID Last_Name Job_Title Salary;
run;

libname orionx clear;

