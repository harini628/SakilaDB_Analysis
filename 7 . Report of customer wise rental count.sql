SELECT r.customer_id , count(*)'COUNT OF PURCHASE', concat(c.first_name,' ',c.last_name)'Name of customer' ,a.phone,c.email,a.address'Address' 
FROM sakila.rental r
join customer c on c.customer_id = r.customer_id
join address a on a.address_id = c.address_id
group by r.customer_id
order by count(*) desc;
