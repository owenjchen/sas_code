*pf17d05b;

data orders;
	set orion.Orders;
	where year(Order_Date)=%substr(&sysdate9,6);
    *where year(Order_Date)=%eval(%substr(&sysdate9,6)-2);
	Lag=Delivery_Date - Order_Date;
run;

proc means data=&syslast maxdec=2 min max mean;
	class Order_Type;
	var Lag;
	title "Report based on %scan(&syslast,2,.) data";
run;
