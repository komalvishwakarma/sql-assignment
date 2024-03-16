use mavenmovies;

  -- Question-1
-- Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables. 
 select * from information_schema.key_column_usage;
  
-- Question-2
 select * from actor;
 
 -- Question-3
 select * from customer;
 
 -- Question-4
 select distinct * from country;
 
 -- Question-5
 select * from customer where active=1;
 
 -- Question-6 List of all rental IDs for customer with ID 1.
 select * from rental where customer_id=1;
 
 -- Question-7 Display all the films whose rental duration is greater than 5.
 select * from film where rental_duration > 5;
 
 -- Question-8 
 select count(*) from film where replacement_cost>15 and replacement_cost<20;
  select count(*) from film where replacement_cost between 15 and 20;
  
  -- Question-9
  select count(distinct(first_name)) from actor;
  
  -- Question-10
  select * from customer limit 10;
  
  -- Question-11
  select * from customer where first_name like "b%" limit 3;
  
  -- Question-12
  select title from film where rating="G" limit 5;
  
  -- Question-13
  select * from customer where first_name like "a%";
  
  -- Question-14
  select * from customer where first_name like "%a";
  
  -- Queation-15
  select * from city where city like "a%a" limit 4;
  
  -- Question-16
  select * from customer where first_name like "%ni%";
  
  -- Question-17
  select * from customer where first_name like "_r%";
  
  -- Question-18
  select * from customer where first_name like "a%" and length(first_name)>=5;
  
    -- Question-19
  select * from customer where first_name like "a%o";
  
    -- Question-20
  select * from film where rating in ("PG","PG-13");
  
    -- Question-21
  select * from film where length between 50 and 100;
  
    -- Question-22
  select * from actor limit 50;
  
    -- Question-23
  select distinct(film_id) from inventory;