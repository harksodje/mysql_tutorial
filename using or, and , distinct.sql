use sql_store;
-- to join two tables 
create table customer_order (
select * from sql_store.customers, sql_store.order_item_notes);
describe customer_order;
select * from customer_order ;
-- any of the two lines can be use for query 
select first_name, phone from customer_order 
	where  city in ( 'Waltham','Colorado Springs');
    -- using OR
select first_name, phone from customer_order 
	where city like '%ham' or city like '%lor%';
    -- using AND
select first_name from customer_order 
	where points >1000 and points <1500;
    -- using DISTINCT 
select distinct first_name from customer_order 
	where points >1000 and points <1500;