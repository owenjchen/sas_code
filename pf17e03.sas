*pf17e03;

title; 
footnote; 

proc print data=orion.employee_payroll3;
   format Birth_Date Employee_Hire_Date date9.;
run;
