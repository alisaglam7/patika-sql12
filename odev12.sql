--Ödev 12.1
SELECT COUNT(*) FROM film
WHERE length  >
(
	SELECT AVG(length) FROM film
);

--Ödev 12.2
SELECT COUNT(*) FROM film
WHERE rental_rate =
(
	SELECT MAX(rental_rate) FROM film
);

--Ödev 12.3
SELECT * FROM film 
WHERE rental_rate = ANY
(
	SELECT MIN(rental_rate) FROM film	
)
AND replacement_cost = ANY
(
	SELECT MIN(replacement_cost) FROM film
);

--Ödev 12.4
SELECT customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
WHERE payment.amount = 
(
    SELECT MAX (amount) FROM payment
);
