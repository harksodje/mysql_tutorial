SELECT * FROM sql_store.customers;
-- to use IS NULL and IS NOT NULL
-- IS NULL refers to that the particular
	-- row or rows related to a column has empty or missing value
-- IS NOT NULL refers to that the oarticular 
	-- row or rows related to a column are not missing
select * from customers where phone is null;
select * from customers where phone is not null;