
-- constraints ==> 
-- SQL Constraints ka use table me rules / restrictions lagane ke liye hota hai,
-- taaki data valid, accurate aur consistent rahe
-- Constraints wo conditions hote hain jo column ya table level par lagaye jaate hain.

-- DDL statement =>(Data defination language)
-- create, drop, alter, truncate

-- Structure (Data defination language)
-- create, alter, drop, truncate

create database regex1;
use regex1;
create table test1( sno int); -- table create (sno column name)

describe test1; -- describe mean table info check

-- DML (insert statement)

-- DML (insert, update, delete, merge) 
insert into test1 values(10);  -- insert use column me data/value add krne ke liye
select * from test1;
insert into test1(sno) values(11);
insert into test1(sno) values(20),(null),(30); -- 3 rows insert

select count(sno), count(*) from test1;

create table test2(sno int not null, salary int); -- not null is constraints and used for not add null value 
insert into test2(sno, salary) values (20,1000);
insert into test2(sno, salary) values(20, null);
insert into test2(sno, salary) values(null,1000);   -- we have set constraint (error) 
insert into test2(sno) values (1000);
insert into test2(salary) values(5000000);  -- error (because no null and no default set)

select * from test2;

create table test3(sno int not null default 80, salary int);
insert into test3(salary) values(1000);

insert into test3(sno) values(5000);
select * from test3;

create table test4(sno int not null, salary int unique default 100);
select * from test4;

insert into test4(sno, salary) values(1000, 20000);
insert into test4(sno, salary) values(1001, 20000);  -- error duplicate values 

insert into test4(sno) values(600);
select * from test4;
insert into test4(sno) values(700);  -- error 100 is a value already in table

insert into test4(sno, salary) values(1001,null); 
insert into test4(sno, salary) values(1001224, null); 
select * from test4;

-- CONDITIONS 
-- check coditions

drop table test7;   -- drop/delete table
create table test7(sno int, salary int, 
constraint regex_test7_sno_chk check (sno between 1 and 100), 
constraint regex_test7_salary_chk check (salary in (1000,2000)));

insert into test7(sno, salary) values(4,1000);
select * from test7;
insert into test7(sno, salary) values(150, 1000); -- error (because check constrain condotion not true)
insert into test7(sno, salary) values(90, 1500); -- error

-- CREATE A TABLE EMPLOYEE
-- COLUMNS EMP ID is primary key
-- employee name varchar(), email with unique constraints, 
-- college with default value, age with condition >18 
-- and guardian should be a pelndrom.
create table employee(emp_id int primary key,
					  emp_name varchar(20),
                      email varchar(20) unique,
                      collage varchar(20) default 'MDSU',
                      age int check (age > 18),
                      guardian_name varchar(30), 
                      check (guardian_name = reverse(guardian_name)));
 insert into employee(emp_id,
					  emp_name,
                      email,
                      collage,
                      age,
                      guardian_name) values (10,'harish','vaishnav42@gmail.com',
											 'JNVU',22,'mom');
select * from employee;

