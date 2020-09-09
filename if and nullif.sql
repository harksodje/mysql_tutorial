use sql_store;
-- case 
select customer_id, 
case state
when 'MA' then 'mark'
when 'VA' then 'vancouver'
else 'n/a'
end as state from sql_store.customers;
-- if and null if
select customer_id, if  (state like '[a-g]', 'good','not included')
 as state from sql_store.customers;
 select customer_id, nullif(state , state like '[a-g]')
 as state from sql_store.customers;
 