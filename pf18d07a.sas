*pf18d07a;

%macro daily;
   proc print data=orion.order_fact3;
      where order_date="&sysdate9"d;
	  *where order_date="&sysdate9"d-730;
      var product_id total_retail_price;
      title "Daily sales: &sysdate9";
   run;
%mend daily;

%macro weekly;
   proc means data=orion.order_fact3 n sum mean;
      where order_date between "&sysdate9"d-6 and "&sysdate9"d;
	  *where order_date between "&sysdate9"d-730 and "&sysdate9"d;
      var quantity total_retail_price;
      title "Weekly sales: &sysdate9";
   run;
%mend weekly;

%macro reports;
   %daily
   %if &sysday=Friday %then %weekly;
%mend reports;

%reports
