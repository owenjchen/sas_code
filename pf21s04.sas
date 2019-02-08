*** pf21s04 ***;

proc sql;
title 'Total Quantities Sold by Product ID and Name';
select p.Product_ID,
       Product_Name,
	   sum(Quantity) 'Total Sold'
   from orion.product_dim as p,
        orion.order_fact as o
   where p.Product_ID = o.Product_ID
   group by p.Product_ID, Product_Name
   order by 3 desc, Product_Name;
quit;
title;
