data expenses;
   Income=50000000;
   Expenses =38750000;
   do Year=1 to 75;
      income +(income * .01);
      expenses+(expenses * .02);
      if expenses > income then leave;
   end;
run;

proc print data=expenses;
   format income expenses dollar14.2; 
run;


