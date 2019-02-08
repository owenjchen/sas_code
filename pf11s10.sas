ods html file="&path/pf11s10.html" stylesheet=(url="&path/pf11e10c.css");
title 'Customer Type Definitions';
proc print data=orion.customer_type;
run;
ods html close;
