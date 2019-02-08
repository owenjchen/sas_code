proc sort data=orion.customer_dim out=work.customers;
  by Customer_Type;
run;

data work.agecheck;
  set work.customers;
  by Customer_Type;
  retain Oldest Youngest O_ID Y_ID;
  if first.Customer_Type=1 then do;
    oldest=Customer_BirthDate;
	Youngest=Customer_BirthDate;
	O_ID=Customer_ID;
	Y_ID=Customer_ID;
  end;
  if Customer_BirthDate < Oldest then do;
    O_ID=Customer_ID;
    Oldest=Customer_BirthDate;
  end;
  else if Customer_BirthDate > Youngest then do;
    Y_ID=Customer_ID;
    Youngest=Customer_BirthDate;
  end;
  if last.Customer_Type=1 then do;
    AgeRange=(Youngest-Oldest)/365.25;
	output;
  end;
  keep Customer_Type Oldest Youngest O_ID Y_ID AgeRange;
run;

title 'Oldest and Youngest Customers of each Customer Type';
proc print data=work.agecheck noobs;
  format Oldest Youngest date9. AgeRange 5.1;
run;
title;


 /* Alternate solution */
proc sort data=orion.customer_dim out=work.customers;
  by Customer_Type Customer_BirthDate;
run;

data work.agecheck;
  set work.customers;
  by Customer_Type;
  /* Could instead use: by Customer_Type Customer_BirthDate; 
     In this DATA step, either BY statement works. */
  retain Oldest Youngest O_ID Y_ID;
  if first.Customer_Type=1 then do;
    O_ID=Customer_ID;
	Oldest=Customer_BirthDate;
  end;
  /* Having sorted also on Customer_BirthDate, we know the first
  customer in each BY group will be the oldest (have the 
  smallest SAS date value for a Birthday). */
  if last.Customer_Type=1 then do;
    Y_ID=Customer_ID;
	Youngest=Customer_BirthDate;
    AgeRange=(Youngest-Oldest)/365.25;
	output;
  end;
  /* Similar story: last in each BY group will be the youngest. */
  keep Customer_Type Oldest Youngest O_ID Y_ID AgeRange;
run;

title 'Oldest and Youngest Customers of each Customer Type';
proc print data=work.agecheck noobs;
  format Oldest Youngest date9. AgeRange 5.1;
run;
title;
