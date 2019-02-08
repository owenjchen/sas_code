*pf17e06;

title; 
footnote; 

proc print data=orion.organization_dim3;
   id Employee_ID;
   var Employee_Name Employee_Country Employee_Gender;
   title 'Listing of All Employees From Orion.Organization_Dim3';
run;

title; 
