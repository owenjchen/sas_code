ods csvall file="&path/pf11s08.csv";
ods msoffice2k file="&path/pf11s08.html" style=Listing;
ods tagsets.excelxp file="&path/pf11s08.xml" style=Listing;

title 'Customer Type Definitions';
proc print data=orion.customer_type;
run;

title 'Country Definitions';
proc print data=orion.country;
run;
title;
ods csvall close;
ods msoffice2k close;
ods tagsets.excelxp close;
