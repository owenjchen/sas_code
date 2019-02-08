* pf17s06;

 title; 
footnote; 

/* Part A */
%let dsn=Organization;
%let var=Employee;
proc print data=orion.&dsn._dim3;
   id &var._ID;
   var &var._Name &var._Country &var._Gender;
   title "Listing of All &var.s From Orion.&dsn._Dim3";
run;

/* Part B */
%let dsn=Customer;
%let var=Customer;
proc print data=orion.&dsn._dim3;
   id &var._ID;
   var &var._Name &var._Country &var._Gender;
   title "Listing of All &var.s From Orion.&dsn._Dim3";
run;
