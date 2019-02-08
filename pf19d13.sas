*** pf19d13 **;

proc sql;
select Employee_ID, Job_Title, Salary
   from orion.employee_information 
   where Salary > 112000;
quit;
