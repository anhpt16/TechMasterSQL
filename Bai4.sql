use sakila;
-- Câu 1:
select city.city, country.country from country inner join city on city.country_id = country.country_id;
-- Câu 2:
select city.city, country.country from country inner join city on city.country_id = country.country_id where country = 'United States';
-- Câu 3:
select address.address, city.city from city inner join address on city.city_id = address.city_id where city = "HaNoi";
-- Câu 4:
 select film.title, film.description, category.name, film.rating
 from film
	inner join film_category on film.film_id = film_category.film_id
    inner join category on film_category.category_id = category.category_id
 where film.rating = "R";
 -- Câu 5
 select film.*, actor.first_name, actor.last_name
 from film
	inner join film_actor on film.film_id = film_actor.film_id
	inner join actor on film_actor.actor_id = actor.actor_id
 where actor.first_name = "NICK" and actor.last_name = "WAHLBERG";
 -- Câu 6:
 select customer.email, country.country
 from customer
	inner join address on customer.address_id = address.address_id
    inner join city on address.city_id = city.city_id
    inner join country on city.country_id = country.country_id
 where country.country = "United States";
 
    