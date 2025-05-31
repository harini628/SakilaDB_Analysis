WITH low_rentals AS (
SELECT r.inventory_id,count(*)'count_rental',f.title,i.film_id FROM sakila.rental r
group by r.inventory_id
having count_rental<=1
order by count_rental;
)

SELECT r.inventory_id,count(*)'count_rental',f.title,i.film_id 
FROM low_rentals
join inventory i on i.inventory_id=r.inventory_id
join film f on f.film_id = i.film_id
