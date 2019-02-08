*pf18e02;

proc print data=orion.customer_dim3(obs=10);
   var Customer_Name Customer_Group;
	title 'Customer List';
run;
