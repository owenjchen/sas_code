libname orionxls pcfiles path= "&path/sales.xls";
*options validvarname=v7;       /* Needed for SAS Enterprise Guide */

data work.subset2;
	set orionxls.'Australia$'n;
 	where Job_Title contains 'Rep';
	Bonus=Salary*.10;
 	keep First_Name Last_Name Salary Bonus
             Job_Title Hire_Date;
 	label Job_Title='Sales Title'
             Hire_Date='Date Hired';
   format Salary comma10. Hire_Date mmddyy10.
			   Bonus comma8.2;
run;

proc contents data=work.subset2;
run;

proc print data=work.subset2 label;
run;

libname orionxls clear;
