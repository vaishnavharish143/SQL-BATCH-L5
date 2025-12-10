use world;

show tables;

select * from country;


select * from country where continent = 'Asia';

select * from country where indepyear = 1991;

select name, continent from country where indepyear = 1991; -- condition are not compulsary in select 

-- in opretor use 
select * from country where continent in ('Asia','Africa');

select * from country where indepyear in (1960,1991);

-- between and not between opretor use
select * from country where indepyear between 1960 and 1991;

select * from country where indepyear not between 1960 and 1991;

-- question 
-- get the country name and continent where the region is not shouth europe.
select name, continent from country where Region !='Southern Europe';

-- get the country name and continent , population along with 10 percent increment in the population.
select name, continent, population, population*0.1+population from country; 

-- get the all the columns where the life expectancy is either 75.1 percent, 77.8 or 63.7 percent. 
select * from country where LifeExpectancy in (75.1,77.8,63.7);

-- get the country name populations region where the population shoulb not be from 5000 to 3 lac.
select name, population, region from country where population not between 5000 and 300000;

-- like operator 
-- match a pattern
-- name => letter start, letter include, letter end
-- (%)--> % is special character/wildcard character
-- zero or more character
-- 'A'
select * from country where name like 'A%'; -- first character A se start 
select * from country where name like '%a'; -- last character a se end 
select * from country where name like '%a%'; -- a character me kahi bhi ho
select * from country where name like '%ru%'; -- ru character me kahi ho

-- (_)underscope --> only 1 character
select * from country where name like 'Ira_'; -- _ single underscope mean only 1 character
select * from country where name like 'Ir__'; -- __ double underscope mean 2 character
select * from country where name like '____'; -- jitne underscope ho utne character 
select * from country where name like '_u_%'; -- 

-- question 
-- get the country name and the continent where the continent will start letter n
select name, continent from country where continent like 'N%';

-- get the contry name and the continent where the continent secand last charater is p
select name, continent from country where continent like '%p_';

-- get the country and the continent where the continent have minimum four character
select name, continent from country where continent like '____';

-- get the name and continent where the second letter is a 
-- and the last second letter is also a from region column
select name, continent, region from country where region like '_a%a_'; 

-- third character is c and the last 3 chracter is sia from region
select name, continent, region from country where region like '__c%sia';

-- get the name and region where the continent is north america and south america.
select name, region,continent from country where continent in ('North America', 'South America');

