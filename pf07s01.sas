libname prod pcfiles path="&PATH/products.xls";
*options validvarname=v7;   /* SAS Enterprise Guide only */

proc contents data=prod._all_;
run;

data work.golf;
   set prod.'Sports$'n;
   where Category='Golf';
   drop Category;
   label Name='Golf Products';
run;

libname prod clear;

proc print data=work.golf label;
run;
