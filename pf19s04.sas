*** pf19s04 ***;

proc sql;
select Employee_ID, Recipients
   from orion.employee_donations
   where Recipients like "% Inc. 90~%" ESCAPE "~";
quit;

