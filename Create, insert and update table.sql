show databases;
use students;
drop table student_info;
create table student_info (student_id int not null, name varchar(100) not null,
 level int, Cgpa decimal(6,2) not null, primary key (student_id));
describe student_data;
select	* from student_info;
-- to insert into table
insert into student_info values(1, 'Akinsoji', 200, 6.3);
insert into student_info values(2, 'Adeyemi', 200, 6.3);
insert into student_info values(3, 'Akinolu', 200, 6.3);
insert into student_info values(4, 'Akinwale', 200, 6.3);
insert into student_info values(5, 'Akinsanmi', 200, 6.3);
insert into student_info values(6, 'Akinola', 200, 6.3);
insert into student_info values(7, 'Akingoriola', 200, 6.3);
select	* from student_info;
-- to update table
update student_info set level = 300 where name = 'adeyemi';
update student_info set level = 400 where name = 'Akinolu';
update student_info set level = 500 where name = 'Akinwale';
update student_info set name = 'Dr Omobowale Oluyimika'
 where student_id  > 2 ;
 select * from student_info;
 update student_info set name = 'Dr Akinsoji'
 where student_id  > 2  and student_id < 5;
select * from student_info;
 -- to delete data
 delete from student_info
 where student_id = 7;
 -- to alter the existing column
alter table student_info modify column Cgpa decimal(10,3) not null
;