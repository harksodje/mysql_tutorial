use sql_hr;
SELECT * FROM sql_hr.employees;
select *from employees e
join employees n on n.employee_id = e.reports_to;
select  e.employee_id, e.first_name, e.last_name, n.first_name, n.last_name, e.job_title from employees e
join employees n on n.employee_id = e.reports_to;