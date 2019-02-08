*** pf20d14 ***;

proc sql;
select count(Employee_ID) as Count
   from orion.employee_information
   where Employee_Term_Date is missing;
quit;
