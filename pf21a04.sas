*** pf21a04 ***;
/****************************************************************************/
/* This program uses %INCLUDE statement to create a Temporary SAS data set. */
/* The %INCLUDE  statement includes a full path for Microsoft Windows.      */
/*                                                                          */
/* For UNIX or SAS onDemand:                                                */
/*      Replace  the %INCLUDE statement with the following statement:       */
/*               %include "&path/name-file.sas";                            */
/*                                                                          */
/* For  z/OS:                                                               */
/*      Replace  the %INCLUDE statement with the following statement:       */
/*               %include "&path..rawdata(name-file)";                      */
/****************************************************************************/

%include "&path/pf21d00b.sas" /source2;/* Windows and Unix */

data work.new;
   merge customer2 (in=InCust)
         transaction2 (in=InTrans);
   by id;
   if InCust=1 and InTrans=1;
run;
proc print data=work.new;
run;
