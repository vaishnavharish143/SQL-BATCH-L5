use world;

-- substr(sub string)--> jis character se start krna he means slicing ki tarah kam krta hai
-- syntex-> substr(column_name,start,end)

select name, substr(name,2) from country; -- second character to start
select name, substr(name,2,4) from country; -- start second character end 4 character
select name, substr(name,-4,2) from country; -- start reverse 4 character to end 2 character

-- Q.-- get name, continent where the first character of continent
-- should be same of country.
select name, continent,substr(name,1,1), substr(continent,1,1) from country 
where substr(name,1,1)= substr(continent,1,1);

-- Q. get the name and population where the starting three characters of the country is ALG.
select name, population, substr(name,1,3) from country 
					where substr(name,1,3)='ALG';

-- instr --> character ki position return krta hai
-- syntex--> instr(column_name, character)
select name, instr(name,'e') from country;		

-- char_length --> total of character
select name, char_length(name) from country;

-- trim--> extra space remove
select ('    Harish   ');
select char_length('    Harish   ');
select char_length(trim('    Harish   '));

-- Rtrim-> right side space remove
-- Ltrim-> left side space remove

select trim( both'z' from 'zHarishzz'); -- both mean dono side se 'z' ko remove krna

select name, trim(both'A' from name) from country;
select name, trim(both 'a' from trim(both'A' from name)) from country;

-- lpad and rpad -> when we want to define a column with fixed size
select name, population, rpad(population,9,'#')from country;


	