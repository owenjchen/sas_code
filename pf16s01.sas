* pf161s01;
 

/* b  */
/*The keywords NOTE, WARNING, and ERROR make the results of the */
/*%PUT statements resemble standard SAS NOTE, WARNING, and */
/*ERROR messages. Depending on the operating environment, */
/*the messages might be color-coded or just displayed in bold.*/

%put NOTE: Is this a SAS note?;
%put WARNING: Is this a SAS warning?;
%put ERROR: Is this a SAS error?;


/* c  */
/*The hyphen forces the keywords NOTE, WARNING, and */
/*ERROR to be suppressed.*/

%put NOTE- Is this a SAS note?;
%put WARNING- Is this a SAS warning?;
%put ERROR- Is this a SAS error?;

/* d  */
/*The keywords NOTE, WARNING, and ERROR are case-sensitive */
/*and do not have the desired effect when entered in lowercase.*/

%put note: Is this a SAS note?;
%put warning: Is this a SAS warning?;
%put error: Is this a SAS error?;
