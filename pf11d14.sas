
********** Multiple Procedures **********;
ods pdf file="&path/example.pdf";
ods rtf file="&path/example.rtf";

proc freq data=orion.sales;
   tables Country;
run;

proc means data=orion.sales;
   var Salary;
run;

ods pdf close;
ods rtf close;
