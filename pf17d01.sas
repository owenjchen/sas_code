*pf17d01;

libname orion "&path";

proc freq data=orion.Customer3;
   table Country / nocum;
   footnote 'Created &systime &sysday, &sysdate9';
run;

footnote;

***************************************************************;

proc freq data=orion.Customer3;
   table Country / nocum;
   footnote "Created &systime &sysday, &sysdate9";
run;

footnote;
