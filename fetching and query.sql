-- fetching and query
-- to select all columns from data base
show databases;
use students;
select * from student_info;
-- to select particular column 
select name from student_info;
-- to select with orders
select name from student_info order by student_id desc;
-- to select using limit
select student_info.name, student_info.Cgpa from student_info
	where student_id >2;
-- to select using limit 
select * from student_info
	where name like '%kin%'
		limit 2;