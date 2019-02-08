*pf17e04;

title; 
footnote; 

%let type=Gold;
proc print data=orion.customer_dim3;
   var Customer_Name Customer_Gender Customer_Age;
   where Customer_Group contains "&type";
   title "&type Customers";
run;
