*pf17s03;

title; 
footnote; 

/* Part B */
proc print data=orion.employee_payroll3;
   format Birth_Date Employee_Hire_Date date9.;
   where Employee_Hire_Date between '01jan2007'd and "&sysdate9"d;
run;
