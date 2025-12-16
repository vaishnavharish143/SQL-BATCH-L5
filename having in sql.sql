
use world;

select * from country;

select count(name) from country where continent ='Asia' and indepyear>1950;

select continent, count(name) from country where indepyear>1950 group by continent;

select continent, count(name) from country group by continent;

-- where me vahi data filter hota hai jo data hamari table me present hai 

-- HAVING --> group by ke baad use hota hai and aggregate function ke baad wale 
-- column pr having lagta hai
select continent, count(name) from country 
				group by continent having count(name)>30;
                
-- group by ke sath where or having dono use kr skte hai.

select continent, sum(population) from country group by continent;

select continent, sum(population) from country 
				group by continent having sum(population)>100;

-- find out total country in each indepyear.
select indepyear, count(name) from country group by indepyear;

select indepyear, count(name) from country where indepyear>1930 
					group by indepyear;

select indepyear, count(name) from country where indepyear>1930 
					group by indepyear having count(name)>2;

-- Q.=> you need to get govt form and the total num of country from each govt form 
-- where the total num of contry should be 20

select * from country;
select GovernmentForm, count(name) from country group by GovernmentForm 
							having count(name)>20;
                            
-- Q.=> you need to get govt form and the total num of country where the country should 
-- have the capital >30
select GovernmentForm, count(name) from country
					where capital>30 group by GovernmentForm; 

-- Q.=> you need to get the num of country region and the total population 
-- where the lifeexpectency should be >38 and the population in each continent 
-- should be >300000
select continent, count(name), count(region), sum(population) from country 
	 where lifeexpectancy>38 group by continent having sum(population)>300000;




