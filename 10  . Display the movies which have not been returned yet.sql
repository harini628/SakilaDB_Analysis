SELECT CONCAT(c.first_name,' ',c.last_name )'CUSTOMER_NAME' , f.title, r.return_date 
FROM sakila.rental r
join inventory i on i.inventory_id=r.inventory_id
join film f on f.film_id = i.film_id
join customer c on c.customer_id = r.customer_id
where r.return_date is null
group by CUSTOMER_NAME
order by f.title;
