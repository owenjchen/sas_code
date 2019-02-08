ods html file="&PATH/myreport.html";

proc print data=orion.sales;
run;

ods close;
