********** Style= with PDF **********;
ods pdf file="&path../myreport.pdf" style=printer; /*Default*/
proc freq data=orion.sales;
   tables Country;
run;
ods pdf close;

ods pdf file="&path../myreport.pdf" style=journal;
proc freq data=orion.sales;
   tables Country;
run;
ods pdf close;

********** Style= with RTF **********;
ods rtf file="&path../myreport.rtf" style=rtf; /*Default*/
proc freq data=orion.sales;
   tables Country;
run;
ods rtf close;

ods rtf file="&path../myreport.rtf" style=ocean;
proc freq data=orion.sales;
   tables Country;
run;
ods rtf close;
