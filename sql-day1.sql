/*How many actors are there with the last name ‘Wahlberg’?*/

select count(last_name)
from ACTOR
where LAST_NAME = 'Wahlberg';

/*How many payments were made between $3.99 and $5.99?*/
select count(payment_id)
from payment p 
where amount between 3.99 and 7.99;

--What film does the store have the most of? (search in inventory)

SELECT film_id , COUNT(film_id) AS count_id
FROM inventory i 
GROUP BY film_id  
ORDER BY count_id desc;

/*How many customers have the last name ‘William’?*/

select count(last_name)
from customer c 
where last_name = 'William';

/*What store employee (get the id) sold the most rentals?*/

select staff_id, count(staff_id) as count_id
from rental r 
group by staff_id 
order by count_id desc limit 1;

/*How many different district names are there?*/
select count(distinct district)
from address a ;

/*What film has the most actors in it? (use film_actor table and get film_id)*/
select film_id, count(film_id) as "number_of_actors"
from film_actor fa 
group by film_id 
order by "number_of_actors" desc;

/*From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)*/
select count(last_name)
from customer c 
where last_name like '%es' and store_id = 1;

/*How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)*/
select amount, count(*) as payment_amounts
from payment p 
where customer_id between 380 and 430
group by amount
having count(rental_id) > 250;

/*Within the film table, how many rating categories are there? And what rating has the most
movies total?*/

select count(distinct rating) as number_of_rating from film f ;

select rating, count(rating) as "Number_of_film"
from film f 
group by rating
order by "Number_of_film" desc limit 1;

