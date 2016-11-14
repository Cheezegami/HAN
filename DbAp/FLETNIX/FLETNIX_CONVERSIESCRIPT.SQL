insert into FLETNIX.dbo.person
select cast(id AS int) AS person_id,
       left(Lname,50) AS lastname,
	   left(Fname,50) AS firstname,
	   left(Gender,1) AS gender
from MYIMDB.dbo.Imported_Person

insert into FLETNIX.dbo.person
select cast(Id AS int) AS person_id,
       left(LName,50) AS lastname,
	   left(FName,50) AS firstname,
from MYIMDB.dbo.Imported_Directors

insert into FLETNIX.dbo.Movie
select cast(id AS int) AS movie_id,
       left(Name,255) AS title,
	   cast(year AS int) AS publication_year
from MYIMDB.dbo.Imported.Movie

insert into FLETNIX.dbo.Movie_Genre
select cast(id AS int) AS movie_id,
       left(Genre,50) AS genre_name
from MYIMDB.dbo.Imported_Genre

insert into FLETNIX.dbo.Movie_Cast
select cast(Mid as int) as movie_id,
       cast(Pid as int) as person_id,
	   left(Role,255) as role
from MYIMDB.dbo.Imported_Cast

insert into FLETNIX.dbo.Movie_Director
select cast(Id as int) as person_id
from MYIMDB.dbo.Imported_Directors




