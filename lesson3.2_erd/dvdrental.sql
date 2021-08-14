--
SELECT COUNT (DISTINCT inventory_id) as  unique_inventory_rented, COUNT(inventory_id) as total_inventory_rented FROM rental;
--
SELECT film.title, film.release_year, film.rating, concat(actor.first_name, ' ', actor.last_name) as actor_full_name 
FROM actor
JOIN film_actor
on film_actor.actor_id = actor.actor_id
JOIN film
on film_actor.film_id = film.film_id
WHERE actor.actor_id = 56 or actor.actor_id = 116
ORDER BY film.title asc;
--
SELECT concat(actor.first_name, ' ', actor.last_name) as actor_full_name, film.title, category.name
FROM actor
JOIN film_actor
on film_actor.actor_id = actor.actor_id
JOIN film
on film_actor.film_id = film.film_id
JOIN film_category
on film_category.film_id = film.film_id
JOIN category
on category.category_id = film_category.category_id
WHERE film_category.category_id = 5 and actor.last_name LIKE 'D%'
ORDER BY actor_full_name asc;
--
SELECT staff_list.name as staff_full_name, count(staff_list.country) as customer_count 
FROM staff_list
JOIN customer_list 
on staff_list.country = customer_list.country
GROUP BY staff_list.name;
--
SELECT store.store_id, count(inventory.film_id) as film_count, category.name
FROM rental
JOIN staff
on rental.staff_id = staff.staff_id
JOIN store
on store.manager_staff_id = staff.staff_id
JOIN inventory
on rental.inventory_id = inventory.inventory_id
JOIN film_category
on inventory.film_id = film_category.film_id
JOIN category
on film_category.category_id = category.category_id
GROUP BY category.name, store.store_id
ORDER BY film_count desc;
--
SELECT staff_list.country, concat(actor.first_name, ' ' , actor.last_name) as actor_full_name, RANK () over ( partition by staff_list.country order by count(inventory.film_id) desc) as actor_rank, count(inventory.film_id) as rent_count 
FROM rental
JOIN inventory
on rental.inventory_id = inventory.inventory_id
JOIN film
on film.film_id = inventory.film_id
JOIN film_actor
on film.film_id = film_actor.film_id
JOIN actor
on film_actor.actor_id = actor.actor_id
JOIN staff_list
on staff_list.id= rental.staff_id
GROUP BY staff_list.country, actor_full_name
ORDER BY actor_rank asc;