*pf18s05;

%macro listing(custtype);
    proc print data=orion.customer3 noobs;
    %if &custtype= %then %do;
       var Customer_ID Customer_Name Customer_Type_ID;
       title "All Customers"; 
    %end;
    %else %do;
       where Customer_Type_ID=&custtype;
       var Customer_ID Customer_Name;
       title "Customer Type: &custtype";
    %end;
    run;
%mend listing;
