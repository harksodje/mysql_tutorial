-- self outer join
use sql_store;
-- to see all the customers who their goods have been shipped or not use `left join`
select	* from sql_store.orders oc
	left join sql_store.orders os on oc.customer_id = os.shipper_id;
-- to see all the customers who their goods have been shipped 
select	* from sql_store.orders oc
	 join sql_store.orders os on oc.customer_id = os.shipper_id;