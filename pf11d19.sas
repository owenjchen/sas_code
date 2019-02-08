ods listing close;
ods csvall file="&path/myexcel.csv";
ods msoffice2k file="&path/myexcel.html";
ods tagsets.excelxp file="&path/myexcel.xml";

title 'Report 1';
proc freq data=orion.sales;
   tables Country;

run;

title 'Report 2';
proc means data=orion.sales;
   var Salary;
run;

title 'Report 3';
proc print data=orion.sales;
   var First_Name Last_Name 
       Job_Title Country Salary;
   where Salary > 75000;
run;

ods _all_ close;
ods listing;

title;

