use sql_store;
select customer_id, order_date, "ACTIVE" as status
 from sql_store.orders 
	where shipped_date >= 2019-01-01 
	union
select customer_id, order_date, "ARCHIVED" as status
 from sql_store.orders 
	where shipped_date < 2019-01-01;