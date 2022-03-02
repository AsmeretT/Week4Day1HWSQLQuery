-- Q1
-- answer: 2
select *
from actor
where last_name = 'Wahlberg';

-- Q2
-- answer: 5,563
select *
from payment
where amount between 3.99 and 5.99;

--Q3
-- answer: film_id '200'
select film_id , count(film_id) 
from inventory 
group by film_id
order by count(film_id) asc;

-- Q4
-- answer: None 
select *
from customer 
where last_name like 'William';

-- Q5
-- answer: Staff_ID = 1 (8,040 rentals)
select staff_id, count(rental_id)
from rental
group by staff_id 
order by count(rental_id) asc;

-- Q6:
-- answer: 16
select distinct name
from category
group by name;

-- Q7: 
-- answer: film_id 508 has the most actors at 16
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc;

-- Q8:
-- answer: 21
select count(last_name) 
from customer
where last_name like '%es';

-- Q9
-- answer: 
select customer_id, count(amount)
from payment
where customer_id between 380 and 430
group by customer_id
having count(amount) > 250
order by count(amount) desc;


--Q10
-- answer: 5 ratings, PG-13 has 223
select rating, count(rating)
from film
group by rating;





