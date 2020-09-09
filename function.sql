use sql_hr;
create function full_name(first_name varchar(50), last_name varchar(50))
returns varchar(100) deterministic
return concat( first_name, last_name);

select employee_id, full_name(first_name, last_name) as name from sql_hr.employees;