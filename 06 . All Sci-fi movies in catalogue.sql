select fc.film_id,c.category_id,f.title'Movies of SCI-FI' from sakila.film_category fc
join category c on fc.category_id = c.category_id
join film f on fc.film_id = f.film_id
where fc.category_id = 14;
