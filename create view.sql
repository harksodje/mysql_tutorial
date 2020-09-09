use sql_hr;
create view employee_details as
select employee_id, first_name, salary from employees;