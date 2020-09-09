-- inner join of tables by using similar columns in both tables.
use sql_store;
select * from orders inner join customers 
	on orders.customer_id = customers.customer_id;
select order_id, shipper_id, first_name, last_name from orders 
	inner join customers on  orders.customer_id = customers.customer_id;
-- using alias for the table name
select order_id, o.customer_id, shipper_id, first_name, last_name from orders o
	inner join customers c  on  o.customer_id = c.customer_id; 
-- to create table using inner join
create table customer_orders
	(select order_id, o.customer_id, shipper_id, first_name, last_name 
	from orders o
	inner join customers c  on  o.customer_id = c.customer_id); 
describe customer_orders;
select * from customer_orders where shipper_id is null;
update customer_orders set shipper_id = 0000 where shipper_id is null ;
select * from customer_orders;
rename table customer_order to customer_order_create;
