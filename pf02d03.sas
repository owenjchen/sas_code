 /********************************************************************
 * This program creates and uses the data set called                 *
 *                                         work.newsalesemps.        *
 *  Demo two different ways to add comments                          *
 * Filename: pf02d03.sas                                             *
 *********************************************************************/

*Import data from a CSV file;
*Save output to a temp SAS table in WORK library;
data work.newsalesemps;
   length First_Name $ 12 Last_Name $ 18
          Job_Title $ 25;
   infile "&path/newemps.csv" dlm=','; *path must be defined in previously; 
   input First_Name $ Last_Name $  
         Job_Title $ Salary /*numeric*/;
run;

/*
proc print data=work.newsalesemps;
run;
*/

proc means data=work.newsalesemps;
   *var Salary;
run;
