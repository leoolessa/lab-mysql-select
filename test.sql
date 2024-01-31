# 1.
select COUNT(*) from actor; 
SELECT COUNT(DISTINCT(last_name)) from actor;
-- 6

# 2.
select COUNT(*) from film; -- 300027
SELECT COUNT(DISTINCT(language_id)) from film;
-- 1

# 3
SELECT count(rating)
	FROM film
	where rating =  "PG-13";
-- 223

# 4
SELECT title from film
order by length
and release_year = '2006'
limit 10;
-- 7

# 5
 what is datediff

# 6 e 7
ALTER TABLE rental ADD COLUMN day_type VARCHAR(10);
UPDATE rental
SET day_type =
    CASE
        WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
        ELSE 'workday'
    END; 

* 8
select count(return_date) from rental
where return_date
like ('2005-09-%');

# 9
select rating from film;

# 10
select release_year from film;

#11
select title from film
where title like ('%ARMAGEDDON%');

#12
select title from film
where title like ('%APOLLO%');

#13
select title from film
where title like ('%APOLLO');

#14
select title from film
where concat(' ', title, ' ') like ('% DATE %');

#15
select title from film
order by LENGTH DESC
limit 10;


#16
SELECT title from film
order by length desc
limit 10;

# 17
select count(special_features) from film
where special_features like ('%Behind the Scenes%');

# 18
select title, release_year from film
where title > 'a'
order by release_year desc;

# 19
ALTER TABLE staff
DROP COLUMN picture;

# 20
INSERT INTO staff VALUES
(3, 'TAMMY', 'SANDERS','79', 'TAMMY.SANDERS@sakilacustomer.org','2', '1', 'TAMMY', ' ', '2014-01-30:05:38:01');

#21