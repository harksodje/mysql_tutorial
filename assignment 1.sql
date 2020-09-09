show databases;
use sql_store;
-- select all customers data between year 1980-01-01 and 1990-12-31
select * from customers
 where birth_date  > 1980-01-01 and birth_date  <  1990-31-01;
 select * from customers
 where birth_date  between 1980-01-01 and 1990-12-31;