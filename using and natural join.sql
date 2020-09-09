use sql_store;
select c.customer_id, o.status, c.first_name from sql_store.customers c
	right join sql_store.orders o on c.customer_id = o.customer_id
    order by c.customer_id asc;
-- USING keyword
select c.customer_id, o.status, c.first_name from sql_store.customers c
	right join sql_store.orders o using (customer_id)
    order by c.customer_id asc;
-- natural join : no condition specify for joining
select c.customer_id, o.status, c.first_name from sql_store.customers c
	natural join sql_store.orders o 
    order by c.customer_id asc;
