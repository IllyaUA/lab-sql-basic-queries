use sakila;
show tables;

SELECT * from actor;
SELECT * from film;
SELECT * from customer;

select title from film;

select name as language from language;

select first_name as names from staff;

SELECT DISTINCT release_year AS unique_release_years
FROM film;

select count(store_id) as number_of_stores from store;

select count(staff_id) as number_of_employees from staff;

select
	sum(case when return_date is null then 1 else 0 end) as films_available,
    (select count(*) from rental where return_date is not null) as films_rented
from rental;

select count(distinct Last_name) as unique_actors from actor;

-- #6
select title, length from film
	order by length desc
    limit 10;

-- #7
select * from actor where first_name= "SCARLETT";

select * from film where (title like "%ARMAGEDDON%") and (length > 100);

select count(*) as films_with_behind_the_scenes from film where special_features like "%behind%scene%";

-- #End.




