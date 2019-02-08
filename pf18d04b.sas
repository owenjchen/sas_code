*pf18d04b;

%macro calc;
   proc means data=
%mend calc;

%calc
orion.order_fact3;
run;

%calc;
orion.order_fact3;
run;
