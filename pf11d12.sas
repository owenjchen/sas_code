ods html file="&path/myreport.html";
proc freq data=orion.sales;
   tables Country;
run;
ods html close;

 /* STYLE= option */
ods html file="&path/myreport.html" style=sasweb;
proc freq data=orion.sales;
   tables Country;
run;
ods html close;
