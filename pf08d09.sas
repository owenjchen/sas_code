/* This DATA step uses the DATALINES statement 
    to provide instream directly in the DATA step.
    The INPUT statement to reads this instream data 
    instead of reading data from an external file.        */

data work.newemps;
   input First_Name $ Last_Name $  
         Job_Title $ Salary :dollar8.;
   datalines;
Steven Worton Auditor $40,450
Merle Hieds Trainee $24,025
Marta Bamberger Manager $32,000
;

proc print data=work.newemps;
run;


