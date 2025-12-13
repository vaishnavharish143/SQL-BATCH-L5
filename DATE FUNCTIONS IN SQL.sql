
use world;

-- Numeric and date function
-- round--> value ko roundup krta hai
select lifeexpectancy, round(lifeexpectancy) from country;

-- decimal value roundup
select round(30.63,1);
select round(30.66,1);
select round(30.666,2);

-- 456.12
-- 6-->one place, 5->10 place, 4->100 place
--  6=> nearest 10 => 0 ya fir 10
-- 76 -> 0 ya 100
-- 176 -> 200 ya 0

-- round => round of to nearest 10th place, nearest 10000

select 6.0012, round(463.0172,2);

select 456, round(457.68,-1);
select round(653.68,-3);
select round(3656.68,-3);

-- truncate-> only value extract no round
select truncate(3653.68,1);

-- other function
select mod(10,3); -- reminder
select ceil(4.000001); -- 1 extract roundup
select floor(4.9999); -- no extract exect value
select pow(2,4); -- power 

-- date function 
select now(); -- now()-> current date and time 
select current_timestamp();
select current_date(); -- only current date
select current_time(); -- only current time

-- add date function ==> By default date add, (month, year, time)
select now(), adddate(now(),2); -- syntex --> adddate(column_name, day+-)
select now(), adddate(now(), interval 2 month); 
select now(), adddate(now(), interval -2 month); 
select now(), adddate(now(), interval 3 year); 
select now(), adddate(now(), interval -2 year); 
select now(), adddate(now(), interval -2 hour); 

select now(), year(now()); -- only year return

select payment_date, adddate(payment_date,2) from sakila.payment;

-- extract (year / month / hour / minute / week)
select now(), extract(year from now());
select now(), extract(month from now());
select now(), extract(week from now());

-- date_format ==> extract but with a string(massage)
select now(), extract(year from now()), date_format(now(),'Year is %Y');
select now(), date_format(now(),'Year is %M');





