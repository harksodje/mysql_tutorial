use sql_store;
-- to join tables across two databases 
-- 1. using selection of all columns method 
select * from sql_store.order_items so 
	join sql_inventory.products sp on 
	so.product_id = sp.product_id;
-- 2. selection of specific columns with mathematical expression.
select order_id,sp.unit_price, quantity * so.unit_price as total_unit_price, 
	quantity_in_stock - quantity as leftover_in_stock
	from sql_store.order_items so 
	join sql_inventory.products sp on 
	so.product_id = sp.product_id;
select date_add('2008 - 01 - 02', interval 31 day);
