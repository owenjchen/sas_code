 ** Close Multiple Destinations with _ALL_ **;
ods pdf file="&path/example.pdf";
ods rtf file="&path/example.rtf";

proc freq data=orion.sales;
   tables Country;
run;

ods _all_ close;

 **********No Open Destinations ************;
proc freq data=orion.sales;
   tables Country;
run;

 ******** Reopen Listing Destination *********;
ods listing;

proc freq data=orion.sales;
   tables Country;
run;
