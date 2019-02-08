 /*********************************************************************/
 /* This program uses an INFILE statement to read a raw data file.    */
 /* The INFILE statement includes a full path for Microsoft Windows.  */
 /*                                                                   */
 /* For UNIX or SAS onDemand:                                         */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path/sales3inv.dat";                       */
 /*                                                                   */
 /* For  z/OS:                                                        */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path..rawdata(sales3inv)";                 */
 /*********************************************************************/

data work.sales;
   infile "&path/sales3inv.csv" dlm=',';
   input Employee_ID First $ Last $ 
         Job_Title $ Salary  Country $;
run;

proc print data=work.sales;
run;
