SELECT * FROM sql_store.customers;
-- to select and concatenate 
select customer_id, concat(first_name, "  ", last_name) as 
	full_name from customers;