*** pf19s01 ***;

proc sql; 
select Employee_ID, Employee_Gender, Marital_Status,
       Salary, Salary/3 as Tax
   from orion.employee_payroll;
quit;
