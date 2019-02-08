  /*********************************************************************/
  /* This program uses an INFILE statement to read a raw data file.    */
  /* The INFILE statement includes a full path for Microsoft Windows.  */
  /*                                                                   */
  /* For UNIX or SAS onDemand:                                         */
  /*      Replace  the INFILE statement with the following statement:  */
  /*               infile "&path/salary.dat";                          */
  /*                                                                   */
  /* For  z/OS:                                                        */
  /*      Replace  the INFILE statement with the following statement:  */
  /*               infile "&path..rawdata(salary)";                    */
  /*********************************************************************/

   /* Part 1 - using colon format modifiers*/
data work.salaries;
	infile "&path/salary.dat";
	input Name $ HireDate :date. Age State $ Salary :comma.;
run;

proc print data=work.salaries;
run;

  /* Part 2 - omit the colon format modifier for Salary */
data work.salaries;
	infile "&path/salary.dat";
	input Name $ HireDate :date. Age State $ Salary comma.;
run;

proc print data=work.salaries;
run;
