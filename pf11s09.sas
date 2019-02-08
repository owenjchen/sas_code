ods html file="&path/pf11s09.html";
proc print data=orion.customer;
   title link='http://www.sas.com' 'Customer Information';
run;
ods html close;
