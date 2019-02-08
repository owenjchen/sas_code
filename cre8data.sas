/* UNIX/Virtual Box */

/* STEP 1: Notice the default values for the %LET statements. */

/* STEP 2: If your files are not to be located in S:\workshop */
/* change the value of PATH= %LET statement to */
/* reflect your data location. */

/* STEP 3:	Submit the program to create the course data files. */

/* STEP 4: Go to the Results-SAS Report tab in Enterprise Guide*/
/* or the Results Viewer in SAS and verify the CONTENTS procedure*/
/* report lists the names of the SAS data sets that were created.*/

%let path=/folders/myfolders/SAS_BNB;

/*+++++++++++++++++++++++++++++++++++++++++++++*/
/* WARNING: DO NOT ALTER CODE BELOW THIS LINE */
/* UNLESS DIRECTED TO DO SO BY YOUR INSTURCTOR.*/
/*+++++++++++++++++++++++++++++++++++++++++++++*/

%include "&path/setup.sas" ;


/* Windows */

*%let path=C:\SASUniversityEdition\myfolders\SAS_BNB;

*%include "&path/setup.sas" ;

