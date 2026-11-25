create database joins;
use joins;
----------------------
select r.movie_id from movie_ratings r inner join movies m on r.movie_id = m.id;
select r.rating,m.title from movie_ratings r inner join movies m on r.movie_id = m.id;
select m.budget,m.title from movies m inner join movie_ratings r on r.movie_id = m.id;
select m.title from movies m inner join movie_credits c on c.movie_id = m.id;
------------------------------------------------------------------------------------------------------
SELECT r.rating, m.title FROM movie_ratings r LEFT JOIN movies m ON r.movie_id = m.id 
UNION SELECT r.rating, m.title FROM movie_ratings r RIGHT JOIN movies m ON r.movie_id = m.id;
------------------------------------------------------------------------------------------------------
select m.title from movies m left join movie_ratings r on r.movie_id = m.id where r.movie_id is null;
------------------------------------------------------------------------------------------------------
SELECT avg(r.rating), m.title FROM movie_ratings r LEFT JOIN movies m ON r.movie_id = m.id 
UNION SELECT avg(r.rating), m.title FROM movie_ratings r RIGHT JOIN movies m ON r.movie_id = m.id;
------------------------------------------------------------------------------------------------------
SELECT r.movie_id, m.id FROM movie_ratings r INNER JOIN movies m ON r.movie_id = m.id ;
SELECT m.title FROM movies m LEFT JOIN movie_ratings r ON r.movie_id = m.id ;
SELECT distinct r.movie_id,m.id FROM movie_ratings r INNER JOIN movies m ON r.movie_id = m.id ;
------------------------------------------------------------------------------------------------------
SELECT r.movie_id, m.id FROM movie_ratings r LEFT JOIN movies m ON r.movie_id = m.id 
UNION SELECT r.movie_id, m.id FROM movie_ratings r RIGHT JOIN movies m ON r.movie_id = m.id;
------------------------------------------------------------------------------------------------------
select concat(m.title,"(",r.user_id,")") as User_and_Movie 
from movies m inner join movie_ratings r on r.movie_id = m.id;
------------------------------------------------------------------------------------------------------
SELECT m.title FROM movies m INNER JOIN movie_ratings r ON r.movie_id = m.id GROUP BY m.title
HAVING count(r.user_id) > 10;
------------------------------------------------------------------------------------------------------
SELECT m.title FROM movie_ratings r INNER JOIN movies m ON r.movie_id = m.id GROUP BY m.title HAVING 
avg(r.rating) > (select avg(r.rating) FROM movie_ratings r);
------------------------------------------------------------------------------------------------------
SELECT c.movie_id FROM movie_credits c INNER JOIN movie_ratings r ON r.movie_id = c.movie_id
WHERE r.rating is null;