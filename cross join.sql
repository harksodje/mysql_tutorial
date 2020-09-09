use sql_store;
select c.first_name as customer_name, p.name from sql_store.customers c 
	cross join sql_store.products p;