
use world;
select * from city;
select * from country;

-- primary key=> unique value identifire hoti hai 
-- foreign key=> duplicate value hoti hai and 
-- ek table ko dusri se connect krta hai

-- describe => information check table
describe city;
describe country;
-- city table => id is primary key and contrycode is the foreign key

-- country table => code is primary key
select count(code), count(distinct code) from country;

-- as =>alias mean column ke naam ko short me banana temperary
select cy.id, cy.name, cy.countrycode from city as cy;

select cnt.code, cnt.name, cnt.continent from country as cnt;

-- join => do table ko primary key and foreign key ke 
-- based pr aapas me jodta hai.
 select cy.id, cy.name, cy.countrycode, 
			cnt.name, cnt.code, cnt.continent from city as cy
 join country as cnt 
			where cy.countrycode = cnt.code;

-- Q. find city name, population the country name along with the 
-- govtform for each city.

select ct.name, ct.population, 
			cnt.name, cnt.governmentform from city as ct
 join country as cnt 
			where ct.countrycode = cnt.code;
            
select * from countrylanguage;
-- Q. get country name, population and the language spoke with the 
-- percent of the each language.
select cnt.name, cnt.population, cntlg.language, cntlg.percentage 
	from country as cnt
			join countrylanguage as cntlg 
					where cnt.code = cntlg.countrycode;
 




