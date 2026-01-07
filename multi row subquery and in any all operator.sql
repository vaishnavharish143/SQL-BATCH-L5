
use sakila;

-- multi row subquery==>
-- in or not in operator => value list me he ya nhi 
select * from payment;
select * from payment where amount in (select amount from payment 
										where payment_id=3 or payment_id=2);
select * from payment where amount not in (select amount from payment 
										where payment_id=3 or payment_id=2);
                                        
-- any operator => condition kisi ek bhi value se match ho 
select * from payment where amount > any (select amount from payment 
										where payment_id=3 or payment_id=2);
select * from payment where amount >= any (select amount from payment 
										where payment_id=3 or payment_id=2);

-- all operator => sabse badi value wala data

select * from payment where amount > all (select amount from payment 
										where payment_id=3 or payment_id=2);
select * from payment where amount <= all (select amount from payment 
										where payment_id=3 or payment_id=2);

-- Q. get all the payment info where the month of payment should be same as of paymet id 2 or 3.
select month(payment_date) from payment where payment_id =2 or payment_id=3;

select * from payment where month(payment_date) in (select month(payment_date) from payment 
													where payment_id =2 or payment_id=3);


-- Q. get all the payment info whos amount is larger then among all the amount of payment id 2 to 8.
select amount from payment where payment_id between 2 and 8;

select * from payment where amount > all (select amount from payment 
							where payment_id between 2 and 8);


-- learning 
-- what are corelated subquery and how they are exequted
-- what are constraint in sql 




