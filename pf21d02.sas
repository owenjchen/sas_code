*** pf21d02 ***;

proc sql;
select Job_Title, 
       avg(Salary) as MeanSalary
   from orion.staff2
   group by Job_Title
   having avg(Salary) > 
      (select avg(Salary)
          from orion.staff2);
quit;
