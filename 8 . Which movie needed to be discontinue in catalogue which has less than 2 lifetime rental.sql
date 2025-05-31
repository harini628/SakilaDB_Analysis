SELECT r.inventory_id,count(*)'count_rental',f.title,i.film_id 
FROM sakila.rental r
join inventory i on i.inventory_id=r.inventory_id
join film f on f.film_id = i.film_id
group by r.inventory_id
having count_rental<=1
order by count_rental;
