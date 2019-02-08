*pf18a02;

%macro reports;
   %daily
   %if &sysday=Friday then %weekly;
%mend reports;
