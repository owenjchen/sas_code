*pf18d07c;

%macro reports;
   %include "&path/daily.sas";
   %if &sysday=Friday %then %do;
      %include "&path/weekly.sas";
   %end;
%mend reports;

%reports