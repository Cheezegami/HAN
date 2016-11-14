-- A --
SELECT movie.title,movie.publication_year,Movie_Genre.genre_name
FROM Movie INNER JOIN Movie_Genre ON Movie.movie_id = Movie_Genre.movie_id
ORDER BY Movie_Genre.genre_name

-- B --
SELECT * from movie
where movie.publication_year >=1990 AND movie.publication_year <=2010

-- C --
Select customer.name, customer.subscription_start
from customer
where customer.subscription_end IS NULL

-- D --
SELECT person.person_id, person.firstname,person.lastname,Movie_Cast.role
FROM person inner join Movie_Cast on person.person_id = Movie_Cast.person_id
WHERE movie_id = 8

-- E --
SELECT movie.title,movie.publication_year
FROM Movie INNER JOIN Movie_Cast
ON movie_cast.movie_id = movie.movie_id
WHERE movie_cast.person_id = 6

-- F --
SELECT name, sum(price) as price_total
FROM Customer INNER JOIN Watchhistory on Watchhistory.customer_mail_adress = Customer.customer_mail_adress
WHERE invoiced = 0
GROUP BY name

-- G --
SELECT TOP 100 Movie.Title, count(Watchhistory.movie_id) as Keer_Bekeken
FROM Movie INNER JOIN Watchhistory ON movie.movie_id = Watchhistory.movie_id
GROUP BY Movie.Title

-- H --
SELECT Movie.Title, Movie.publication_year, count(Watchhistory.movie_id) as Keer_Bekeken
FROM Movie INNER JOIN Watchhistory ON movie.movie_id = Watchhistory.movie_id
GROUP BY Movie.Title

-- I --
SELECT title, Publication_year, count(genre_name) as aantal_genres
FROM Movie INNER JOIN Movie_Genre ON Movie.movie_id = Movie_Genre.movie_id
GROUP BY Movie_genre.movie_id, title, publication_year
HAVING count(genre_name) > 8


-- J --


-- K --
SELECT max(count(movie_Id)) as movies,Person.firstname, person.lastname
FROM Movie_Cast INNER JOIN Person ON Movie_Cast.person_id = Person.person_id
WHERE Movie_Cast.role = 'Director'
GROUP BY Person.firstname,lastname,person.person_id, movie_id

-- L --


-- M --