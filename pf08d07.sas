 /*********************************************************************/
 /* This program uses an INFILE statement to read a raw data file.    */
 /* The INFILE statement includes a full path for Microsoft Windows.  */
 /*                                                                   */
 /* For UNIX or SAS onDemand:                                         */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path/sales.csv" dlm=',';                   */
 /*                                                                   */
 /* For  z/OS:                                                        */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path..rawdata(sales)" dlm=',';             */
 /*********************************************************************/

data work.sales;
   infile "&path/sales.csv" dlm=',';   
   input Employee_ID First_Name :$12. Last_Name :$18. 
         Gender :$1. Salary Job_Title :$25. 
         Country :$2. Birth_Date :date. Hire_Date :mmddyy.;
   if Country='AU';
   keep First_Name Last_Name Salary 
        Job_Title Hire_Date;
   label Job_Title='Sales Title'
         Hire_Date='Date Hired';
   format Salary dollar12. Hire_Date monyy7.;
run;

proc print data=work.sales label;
   var First_Name Last_Name Job_Title Salary Hire_Date;   
run;
