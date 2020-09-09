show databases;
use sql_store;
-- outer join (1)
select so.customer_id, sc.customer_id, sc.first_name from sql_store.orders so join sql_store.customers sc
	on so.customer_id = sc.customer_id;

-- (2)
select * from sql_store.orders as so, sql_store.customers as sc 
	where so.customer_id = sc.customer_id;

select so.customer_id,  sc.first_name, sc.customer_id
	from sql_store.orders so join sql_store.customers sc
	on so.customer_id = sc.customer_id;
-- left join
select so.customer_id,  sc.first_name, sc.customer_id
	from sql_store.orders so left join sql_store.customers sc
	on so.customer_id = sc.customer_id;
select so.customer_id,  sc.first_name, sc.customer_id
	from  sql_store.customers sc left join sql_store.orders so
	on so.customer_id = sc.customer_id;
-- right join 
select so.customer_id,  sc.first_name, sc.customer_id
	from sql_store.orders so right join sql_store.customers sc
	on so.customer_id = sc.customer_id;
select so.customer_id,  sc.first_name, sc.customer_id
	from  sql_store.customers sc right join sql_store.orders so
	on so.customer_id = sc.customer_id;
-- outer join with multiple table
select so.customer_id,  sc.first_name, sc.customer_id, s.shipper_id
	from sql_store.orders so 
    left join sql_store.customers sc
	on so.customer_id = sc.customer_id
    right join sql_store.shippers s on s.shipper_id = so.shipper_id;


