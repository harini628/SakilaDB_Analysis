select distinct r.customer_id,concat(c.first_name , ' ',c.last_name)'Full Name',r.rental_datecustomer from sakila.rental r
join sakila.customer c on c.customer_id = r.customer_id
where date(r.rental_date) = '2005-07-26';
