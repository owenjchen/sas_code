proc freq data=orion.sales;
	tables Gender*Country;
run;

proc format;
	value $ctryfmt 'AU'='Australia'
                  'US'='United States';
	value $gender 'F'='Female'
	              'M'='Male';
run;

proc freq data=orion.sales;
	tables Gender*Country;
	format Country $ctryfmt.
          Gender $gender.;
run;

proc freq data=orion.sales;
   tables Gender*Country / format=12.;
   format Country $ctryfmt.
          Gender $gender.;
run;

