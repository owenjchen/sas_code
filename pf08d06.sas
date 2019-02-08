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
 /*               infile "&path..rawdata(saleps)" dlm=',';            */
 /*********************************************************************/

data work.sales;
   infile "&path/sales.csv" dlm=','; 
   input Employee_ID First_Name :$12. Last_Name :$18. 
			Gender :$1. Salary Job_Title :$25. Country :$2. 
         Birth_Date :date. Hire_Date :mmddyy.;
run;

proc print data=work.sales;
run;
