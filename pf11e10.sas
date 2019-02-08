ods html file="&path/p111s15.html";
title 'Customer Type Definitions';
proc print data=orion.customer_type;
run;
ods html close;
