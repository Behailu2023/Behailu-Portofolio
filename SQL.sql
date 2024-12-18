
-- **Excercise 1*

-- 1.Return all films that were released in 2006 

SELECT*
from film
WHERE release_year =2006

-- 2.Fetch all costumers whose last name starts with the letter 'C'
Select *
from customer
Where last_name Like 'C%'
 
-- 3. Return the payment id's from the payment table where the payment amount is greater than $20 or less than $10

SELECT Paymnet_Id
from Paymnet
WHERE amount >20 or amount <10

-- **EXCERCISE 2**
-- 1. List all payments with an amount of either 1.99, 3.99 or 4.99
SELECT *
FROM payment
WHERE amount=1.99
	OR amount=3.99
	OR amount=4.99;

-- --2. How much is the largest amount of payment? How about the smallest?
SELECT
MAX(amount),
MIN(amount)
FROM payment;

-- --3. When were the first and last dates that we rented out a movie?
SELECT
MAX(rental_date),
MIN(rental_date)
FROM rental;

-- --4. In how many countries does our dvdrental business operate?
SELECT
COUNT (country)
FROM country;

-- --5. How many stores does our dvdrental business have?
SELECT COUNT (store_id)
FROM store;

-- --6. Return the title and the language of each film and sort the result descending by the language first and then ascending by the title
SELECT title, language_id
FROM film
ORDER BY language_id DESC, title ASC;

-- --7. Return customers whose first names start with the letter 'A' and end with the letter 'd' or 'y' [check the brackets]
SELECT *
FROM customer
WHERE first_name LIKE 'A%' AND (first_name LIKE '%d' OR first_name LIKE '%y');

-- --8. How many customers do we have?
SELECT
COUNT (customer_id)
FROM customer;

-- --9. Are our customers' first names all unique? [Got help from Stackoverflow]
SELECT first_name, count(*)
FROM customer
group by first_name
HAVING count(*) > 1

-- No, there are 8 duplicate first names.

-- --10. How many unique customer first names are there?

SELECT COUNT( DISTINCT first_name)
from customer

--There are 591 unique customers.

SELECT COUNT (DISTINCT first_name)
FROM customer;

-- **EXCERCISE 3**

-- 1..Return rentals that were rented out in May and haven't been returned.

SELECT *
FROM rental
WHERE rental_date  IS NULL and rental_date Between 2006-05-01 and 2006-05-31

-- or rental_date Between ‘2005-05-01’ and’ 2005-05-31’ ;

-- 2. Fetch titles of movies that have length between 100 and 150 minutes

SELECT title
FROM film
where length BETWEEN 100 and 150

-- 3. Fetch first names of customers who are not active:

SELECT first_name
FROM customer
WHERE active=0

-- 4. Fetch names of cities that are in countries with IDs 1, 4, 7, or 8:

Select City

From city

where Country_Id in (1,4,7,8) 

Optional

Select Country

From country

where Country_Id in (1,4,7,8)

-- 5. Return the customer_id's of the top 10 highest paying customers

Select customer_id
From Payment 
Orderd by amount DESC
LIMIT 10

-- 6. Return all the payment transactions that are greater than $10 and less than $15 that were processed by staff_id 1 or transaction less than $10 or greater than $15 processed by staff_id 2

SELECT*
FROM Paymnet
Where amount >15 AND <10 and staff_id =1
or ( (amount <10 AND >15) and staff_id =2)

-- 7. How many unique first names and how many duplicate first names do we have in the customer table?

SELECT count(distinct first_name)
From customer

599

---Excercuise 4

-- 1)How many customers does store 1 have?
SELECT COUNT (customer_id )
FROM customer
WHERE store_id=1;

-- 2) How many active customers does store 1 have?
SELECT COUNT(customer_id)
FROM customer
WHERE store_id=1 AND active=1;

-- 3) How many active customers whose name starts with the letter 'A' 
--  or ends with the letter 'Z' does store 1 have?
SELECT COUNT(*)
FROM customer
WHERE (first_name LIKE 'A%' OR  first_name LIKE '%Z') AND store_id=1;

SELECT *
FROM customer
WHERE active=1 AND store_id=1 AND (first_name LIKE 'A%' OR first_name LIKE'%Z')


-- 4) What is the max/highest, min/lowest, average rates to rent a movie?
SELECT MAX (amount), MIN(amount), ROUND (AVG(amount), 3)
FROM payment;

-- SELECT MIN(amount)
-- FROM payment;

-- SELECT AVG(amount)
-- FROM payment;

-- 5) How many R rated movies do we have?
SELECT COUNT(*)
FROM film
WHERE rating='R';

-- 6) How many R, PG or PG-13 rated movies longer than 100 minutes 
-- with rental rate lower than $2 do we have?

SELECT COUNT(*)
FROM film
WHERE rating IN ('R', 'PG', 'PG-13') AND length>100 AND rental_rate<2;

--7) How long are the longest and the shortest movies we have?
SELECT MAX(length), MIN(length)
FROM film

-- 8)What's the average length of our movies?
SELECT ROUND(AVG(length), 3)
FROM film

--9) How much would it cost to replace all our movies?

SELECT SUM(replacement_cost)
FROM film

--10) In how many countries do we have customers?

SELECT COUNT(DISTINCT country) AS "With Dist", COUNT(*) AS "With Count"
FROM country

SELECT COUNT(country_id)
FROM country

SELECT *
FROM country

Example of insert
....INSERT INTO customer 
VALUES (600,1,'Aman','','',343,'false', '2006-02-14', '2013-05-26', 0)
	,(601,1,'Wonz','','',345,'false', '2006-02-14', '2013-05-26', 0);
    
    
