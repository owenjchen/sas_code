*** pf20d17 ***;

proc sql;
select Department, count(*) as Count
   from orion.employee_information
   group by Department;
quit;
