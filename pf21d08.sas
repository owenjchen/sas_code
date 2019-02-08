*** pf21d08 ***;  
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

%include "&path/pf21d00a.sas" /source2; /* Windows and Unix */

title 'Selected Columns with a Table Qualifer';
proc sql;
select customers.ID, Name, Action, Amount
   from customers, transactions
   where customers.ID=transactions.ID;
quit;
title;

title 'Natural Join';
proc sql;
select * from customers natural join transactions;
quit;
title;
