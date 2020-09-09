show databases;
use sql_store;
-- select all customers data where the customer number end with 9
select * from customers;
select * from customers where phone like '___________9';
-- '^5' last value, '5$' first value , '5|' , ' 5|6|7' any of this value 
-- '[gei]e' == ge, ee, ierr Note: all with REGEXP, 
analyze table customers;
select * from customers where phone REGEXP  '[0-9]';

