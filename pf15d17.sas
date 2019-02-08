data compare(drop=i);
   set orion.employee_donations;
   array Contrib{4} Qtr1-Qtr4;
   array Diff{4};
   array Goal{4} _temporary_ (10,20,20,15);
   do i=1 to 4;
      Diff{i}=Contrib{i}-Goal{i};
   end;
run;
proc print data=compare noobs;
   var employee_id diff1-diff4;
run;
