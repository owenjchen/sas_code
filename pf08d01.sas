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

data work.subset;
   infile "&path/sales.csv" dlm=',';
   input Employee_ID First_Name $ 
         Last_Name $ Gender $ Salary 
         Job_Title $ Country $;
run;

proc print data=work.subset noobs;
run;
