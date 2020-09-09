show databases;
use sql_store;
-- implict join (1)
select * from sql_store.orders so join sql_store.customers sc
	on so.customer_id = sc.customer_id;

-- (2)
select * from sql_store.orders as so, sql_store.customers as sc 
	where so.customer_id = sc.customer_id;

select * from sql_store.orders as so, sql_store.customers as sc;

