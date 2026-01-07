
use sakila;

-- sub query =>
select * from payment;

select amount from payment where payment_id=5;
select * from payment where amount = 9.99;

-- () <= nested query 
select * from payment where amount = (select amount from payment where payment_id=5);


-- get the payment id and amount where the amount is not qual to the amount of payment id 23
select amount from payment where payment_id =23;

select payment_id, amount from payment where amount != (select amount from payment where payment_id =23);

-- get the payment id, customer id, amount and payment date where the month of payment should be same as of payment id 6.
select month(payment_date) from payment where payment_id =6;

select payment_id, customer_id, amount, payment_date from payment 
where month(payment_date)=(select month(payment_date) from payment where payment_id =6);

-- get all columns from payment table where the staf serving the customers should be same as of payment id 7.
select * from payment;
select staff_id from payment where payment_id=7;
select * from payment where staff_id = (select staff_id  from payment where payment_id=7);

-- get all the payment info where amount is same as of the higest amount from the payment table;
select max(amount) from payment;
select * from payment where amount = (select max(amount) from payment);

-- get the amount and the total number of payments done for each amount only for those payment whos amount 
-- is less then the amount of rental id 1725.
select amount from payment where rental_id=1725;

select amount, count(amount) from payment where 
amount < (select amount from payment where rental_id=1725) group by amount;
 
 -- get the month and the total amount spent only for those customer
 -- whos month of payment is greter then customer id 1 and payment id 3.
 
select month(payment_date) from payment where customer_id=1 and payment_id=3;

-- single row subquery (nested query => return 1 row only)
select month(payment_date), sum(amount) from payment 
where month(payment_date)>(select month(payment_date) from payment 
							where customer_id=1 and payment_id=3)
group by month(payment_date);

-- learning 
-- multi row sub query 
-- in, any, or opretor
