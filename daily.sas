*daily;

proc print data=orion.order_fact;
	*where order_date="&sysdate9"d;
	where order_date="&sysdate9"d-730;
   var product_id total_retail_price;
   title "Daily sales: &sysdate9";
run;

title;
