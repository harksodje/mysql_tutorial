use sql_store;
create table custromer_o as select distinct * from sql_store.customers;
insert into custromer_o select * from sql_store.customers where points > 2500;
