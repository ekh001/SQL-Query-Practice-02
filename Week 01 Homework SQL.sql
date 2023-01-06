--1. 
select FIRST_NAME, LAST_NAME 
from actor
where LAST_NAME like 'Wahlberg';
--A: 2!

--2. 
select count(amount)
from payment
where amount >= 3.99 and amount <= 5.99;
--A: 4,802?

--3. 
select count(film_id), film_id
from inventory 
group by film_id
order by count(film_id) desc
limit 1;
--Film ID: 350 with a count of 8. I may have done this wrong.

--4. 
select count(last_name)
from customer
where last_name like 'William';
--A: 0

--5. 
select * from rental;
select staff_id, count(rental_date)
from rental
group by staff_id
order by staff_id desc;
--A: staff_id 1 with 8,040 rentals

--6. 
select district, count(distinct district) as district_number
from address
group by district
order by district desc;
--A: 378

--7. 
select film_id, count(film_id) 
from film_actor
group by film_id
order by count(film_id) desc;
--A: Knock Warlock (film_id 508) with 15 actors

--8. 
select count(last_name)
from customer
where store_id = 1 and last_name like '%es';
--A: 13

--9. 
select count(amount), customer_id
from payment
where rental_id > 250 and customer_id > 380 and customer_id < 430
group by customer_id
order by count(amount) desc;
--A: 49..? I didn't really understand this question; this is probably way off base. 

--10.A. 
select count(distinct rating) from film;
--A: 5
--10.B. 
select rating, count(rating)
from film
group by rating
order by count(rating) desc;
--A: PG-13 with 223 movies

--Teacher, I'm finished! ^^



