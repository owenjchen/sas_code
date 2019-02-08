 /*********************************************************************/
 /* This program uses an INFILE statement to read a raw data file.    */
 /* The INFILE statement includes a full path for Microsoft Windows.  */
 /*                                                                   */
 /* For UNIX or SAS onDemand:                                         */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path/managers2.dat";                       */
 /*                                                                   */
 /* For  z/OS:                                                        */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path..rawdata(managers2)";                 */
 /*********************************************************************/

data work.managers2;
	length First Last $ 12 Title $ 25;
	infile "&path/managers2.dat" dlm='09'x;
	input ID First $ Last $ Gender $ Salary Title $;
	keep First Last Title;
run;

proc print data=work.managers2;
run;
