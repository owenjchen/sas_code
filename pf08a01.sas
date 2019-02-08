 /***************************************************************
 *  1. Submit the program.                                      *
 *  2. Determine the reason for the invalid data that           *
 *     appears in the SAS log.                                  * 
 *  3. Which statement best describes the invalid data?         *   
 *     The data in the raw data file is bad.	                   *
 *     The programmer incorrectly read the data.	             *
 ****************************************************************/

 /*********************************************************************/
 /* This program uses an INFILE statement to read a raw data file.    */
 /* The INFILE statement includes a full path for Microsoft Windows.  */
 /*                                                                   */
 /* For UNIX or SAS onDemand:                                         */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path/nonsales.csv" dlm=',';                */
 /*                                                                   */
 /* For  z/OS:                                                        */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path..rawdata(nonsales)" dlm=',';          */
 /*********************************************************************/

data work.nonsales2;
   infile "&path/nonsales.csv" dlm=',';   
   input Employee_ID First $ Last;
run;

proc print data=work.nonsales2;
run;
