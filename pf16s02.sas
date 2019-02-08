*pf16s02;


/*b.*/
/*The first semicolon in the %PUT statement is treated as a special*/
/*token, not as plain text, and ends the statement. */

%put Can you display a semicolon ; in your %PUT statement?;

/*c.*/
/*An error message is generated after the first semicolon because the IN is */
/*interpreted as an invalid keyword*/

/*d*/
/*Because of the first semicolon, the second %PUT satement is */
/*interpreted as another %PUT statement and displays*/
/*statement? in the SAS log.;*/


