select date(r.rental_date)'rentaldate' , count(*) from sakila.rental r
group by date(r.rental_date);
