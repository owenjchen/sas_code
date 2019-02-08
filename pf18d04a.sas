*pf18d04a;

options mprint;

%macro calc;
   proc means data=orion.order_fact3;
   run;
%mend calc;

%calc

