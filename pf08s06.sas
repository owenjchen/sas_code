 /*********************************************************************/
 /* This program uses an INFILE statement to read a raw data file.    */
 /* The INFILE statement includes a full path for Microsoft Windows.  */
 /*                                                                   */
 /* For UNIX or SAS onDemand:                                         */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path/managers.dat";                        */
 /*                                                                   */
 /* For  z/OS:                                                        */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path..rawdata(managers)";                  */
 /*********************************************************************/

data work.salesmgmt;
	length First Last $ 12 Gender $ 1 Title $ 25 Country $ 2;
	format BirthDate HireDate date9.;
	infile "&path/managers.dat" dsd dlm='/' missover;
	input ID First Last Gender Salary Title Country 
         BirthDate :date. HireDate :mmddyy.;
run;

title 'Orion Star Managers';
proc print data=work.salesmgmt;
	var ID Last Title HireDate Salary ;
run;
title;
