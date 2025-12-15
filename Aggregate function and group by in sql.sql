
use world;

-- Distinct -> unique value show krna
select distinct continent from country;

select distinct continent, region from country;

-- Aggregate function -> (multi line functions)==> will give you some result
-- to apply some calculation over set fo rows
-- count -> count total rows without null value
select count(indepyear) from country;

-- count(*)-> count total rows with null value
select count(*) from country;

-- sum()-> additon 
select sum(population) from country;

-- avg()-> avarage (mean)
select avg(population) from country;

-- max ()-> maximumn values
select max(population) from country;

-- min()-> minimum value
select min(population) from country;

select count(continent), count(distinct continent) from country;

select count(indepyear), count(*) from country where continent ='Asia';

-- get the country the total country total region along with the avg lifeexpenctencny and 
-- the total population for the contry who have the independ after 1947 and before 1998.
select * from country;
SELECT count(Region), COUNT(Name) , AVG(LifeExpectancy), SUM(Population) FROM Country
WHERE IndepYear > 1947 AND IndepYear < 1998; 

-- get the total num of country the unique region along with the total population 
-- and the highest lifeexpectancy with the 
-- total capitals for the country starting with the letter 'a' and letter 'd'.

select count(name), count(distinct region), sum(population), 
			max(lifeexpectancy), sum(capital) from country
						where name like 'A%' or name like 'D%';
                        
-- group by--> simillar values ko collect krna in a group)

select continent, count(name) from country group by continent;

-- jis column pr group by krte he wahi column select me use kr skte he 
-- dusra column ke liye us column pr aggregate function laga ke use kr skte hai.

-- Q-> you need to find out the total country and total population for each indepyear.

select IndepYear, count(name), sum(population) from country group by IndepYear; 



 
