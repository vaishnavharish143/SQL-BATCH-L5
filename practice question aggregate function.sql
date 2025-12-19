use sakila;

show tables;

select * from payment;

select count(*) from payment where amount = 2.99;
select amount, count(*) from payment group by amount;

select customer_id, sum(amount) from payment 
				group by customer_id;


select customer_id, sum(amount) from payment where amount>3
				group by customer_id;

select customer_id, count(amount) from payment where month(payment_date)=5 
				group by customer_id;
                
-- find out max amount of transaction avg transaction amount and total transaction amount 
-- one by each staff
select staff_id, max(amount), avg(amount), count(amount) from payment
				group by staff_id;

select staff_id, max(amount), avg(amount), count(amount) from payment 
   where customer_id%2=0 group by staff_id;

-- get the amount total trancsation from each amount only for the payment done 
-- through staff id 1 and where the total amount transaction should be > 30.

select amount, count(*) from payment where staff_id =1 group by 
amount having count(amount)>30;

-- Q. each month wala 
select extract(month from payment_date), count(customer_id), avg(amount), sum(amount) 
	from payment where staff_id =1 or staff_id=2 
					group by extract(month from payment_date);
                    
-- .Q each year and each month wala
select extract(month from payment_date), extract(year from payment_date),
 count(customer_id), avg(amount), sum(amount) 
	from payment where staff_id =1 or staff_id=2 
					group by extract(month from payment_date), extract(year from payment_date) ;