 /*********************************************************************/
 /* This program uses an INFILE statement to read a raw data file.    */
 /* The INFILE statement includes a full path for Microsoft Windows.  */
 /*                                                                   */
 /* For UNIX or SAS onDemand:                                         */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path/pricing.dat";                         */
 /*                                                                   */
 /* For  z/OS:                                                        */
 /*      Replace  the INFILE statement with the following statement:  */
 /*               infile "&path..rawdata(pricing)";                   */
 /*********************************************************************/
data work.prices;
   infile "&path/pricing.dat" dlm='*';
   input ProductID StartDate :date. EndDate :date. 
         Cost :dollar. SalesPrice :dollar.;
   format StartDate EndDate mmddyy10.
          Cost SalesPrice 8.2; 
run;

title '2011 Pricing';
proc print data=work.prices;
run;
title;

