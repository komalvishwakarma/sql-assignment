use mavenmovies;

-- Question-1
select count(rental_id) from rental;

-- Question-2
select avg(rental_duration) from film;

-- Question-3
select upper(first_name) as first_name, upper(last_name) as last_name from customer;

-- Question-4
select rental_id, month(rental_date) as month from rental;

-- Question-5
select customer_id, count(rental_id) from rental group by customer_id;

-- Question-6
select staff_id, sum(amount) from payment group by staff_id;

-- Question-7
select * from film;
select * from inventory;
select * from rental;
select * from customer;
select title, first_name, last_name from film inner join inventory on film.film_id=inventory.film_id inner join rental on inventory.inventory_id=rental.inventory_id
inner join customer on rental.customer_id=customer.customer_id;

-- Question-8
select * from film;
select * from film_actor;
select * from actor;
select first_name, last_name from film inner join film_actor on film.film_id=film_actor.film_id inner join actor on film_actor.actor_id=actor.actor_id where title="GONE WITH THE WIND";

-- Question-9
select * from film_category;
select * from inventory;
select * from rental;
SELECT 
    category_id, COUNT(rental_id)
FROM
    film_category
        INNER JOIN
    inventory ON film_category.film_id = inventory.film_id
        INNER JOIN
    rental ON inventory.inventory_id = rental.inventory_id
GROUP BY category_id;

-- Question-10
select * from film;
select * from language;
select name, avg(rental_rate) from film inner join language on film.language_id=language.language_id group by name;


-- Question-11
select * from customer;
select * from payment;
select * from rental;
SELECT 
    CONCAT(first_name, ' ', last_name) AS customer_name,
    SUM(amount)
FROM
    customer
        INNER JOIN
    payment ON customer.customer_id = payment.customer_id
        INNER JOIN
    rental ON payment.rental_id = rental.rental_id
GROUP BY customer_name;

-- Question-12
   SELECT 
    CONCAT(first_name, ' ', last_name) AS name,
    f.title,
    c.customer_id,
    city
FROM
    city
        INNER JOIN
    address ON city.city_id = address.city_id
        INNER JOIN
    customer AS c ON address.address_id = c.address_id
        INNER JOIN
    rental ON c.customer_id = rental.customer_id
        INNER JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
        INNER JOIN
    film AS f ON inventory.film_id = f.film_id
WHERE
    city = 'london'
GROUP BY c.customer_id , f.title;    
    
    -- Question-13
    select * from film;
    select * from inventory;
    select * from rental;
SELECT 
    title, COUNT(rental_id)
FROM
    film
        INNER JOIN
    inventory ON film.film_id = inventory.film_id
        INNER JOIN
    rental ON inventory.inventory_id = rental.inventory_id
GROUP BY title
ORDER BY COUNT(rental_id) DESC
LIMIT 5; 

-- Question-14
select * from rental;
select * from inventory;
select * from customer;
SELECT customer.first_name, customer.last_name 
FROM customer 
JOIN rental ON customer.customer_id = rental.customer_id 
JOIN inventory ON rental.inventory_id = inventory.inventory_id 
WHERE inventory.store_id IN (1, 2) 
GROUP BY customer.customer_id 
HAVING COUNT(DISTINCT inventory.store_id) = 2;