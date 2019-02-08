proc print data=orion.sales label;
   var Employee_ID Salary 
 		 Country Birth_Date Hire_Date;
   format Salary dollar10.0
          Birth_Date Hire_Date monyy7.;
run;

