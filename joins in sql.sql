
CREATE DATABASE REGEX;
USE REGEX;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);

select * from orders;
select * from customers;

-- join tables
select c.customer_id, c.customer_name, o.order_id, o.customer_id, o.amount from customers as c
join orders as o 
where c.customer_id = o.customer_id;

-- inner joins ==> join are also inner join => its return only matching record from both tables.
select c.customer_id, c.customer_name, o.order_id, o.customer_id, o.amount from customers as c
inner join orders as o 
where c.customer_id = o.customer_id;

-- left outer join => left table all record + second table only matching record return.
select c.customer_id, c.customer_name, o.order_id, o.customer_id, o.amount from customers as c
left join orders as o 
on c.customer_id = o.customer_id;

-- right outer join => right table all record + second table only matching record return.
select c.customer_id, c.customer_name, o.order_id, o.customer_id, o.amount from customers as c
right join orders as o 
on c.customer_id = o.customer_id;

-- Q. total amount for each customer.
select c.customer_name, sum(o.amount) from customers as c 
join 
orders as o 
on c.customer_id = o.customer_id group by c.customer_name;

-- Q. you need to find the actor_id and the actor_name and the total number of movies in years
use sakila;
select * from actor;
select * from film_actor;

select a.actor_id, a.first_name, count(fa.film_id) from actor as a
join film_actor as fa 
where a.actor_id=fa.actor_id group by a.actor_id, a.first_name;


-- learning assignment 
-- what is normalization in sql
-- what is 1nf, 2nf, 3nf 
-- (partial dependency => non key attribute)








