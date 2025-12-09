select database();
-- change to world database
use world;

-- tables
show tables;
-- to see the structure of table;
desc city;

-- to print data of a table

select * from city;

-- to acess column

select name, population from city;

-- column can be print in any order
select population, name, district from city;

select name, population, population+10 from city;

-- query can be written in multiple line
-- sql is not case sensitive
SELect Name, population, 
				countrycode, 
							population from CITY;

-- alias (nickname)

select *, population+12+12-4-5-12-4 as 'Newpopulation' from country;


-- learning assingment 
-- what is database
-- what is file system and how it is different from DBMS
-- types of DBMS and the name for each of one
-- DBMS vs RDBMS 


-- tomorrow study
-- where cluase 


