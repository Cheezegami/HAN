use master
go


drop database FLETNIX
go



create database FLETNIX
go


use FLETNIX
go
create table Movie(
movie_id int not null,
title varchar(255) not null,
duration integer null, 
description varchar(255) null,
publication_year integer null,
cover_image image null,
previous_part int null,
price numeric(5,2) not null,
URL varchar(255) null,
constraint PK_MOVIE primary key (movie_id),
constraint FK_MOVIE foreign key (previous_part)
          references movie(movie_id)
		  on update no action
		  on delete no action,
constraint ck_movie CHECK (publication_year >= 1890 AND publication_year <= 2015)
)
go
create table Person(
person_id int not null,
lastname varchar(50) not null,
firstname varchar(50) not null,
gender char(1) null,
constraint PK_PERSON primary key (person_id),
constraint ck_person CHECK (gender IN ('M','F'))

)
go


create table Movie_Cast(
movie_id int not null,
person_id int not null,
role varchar(255) not null,
constraint PK_MOVIE_CAST primary key (movie_id, person_id, role),
constraint FK_MOVIE_CAST_person foreign key (person_id)
               references person (person_id)
			   ON UPDATE CASCADE
			   ON DELETE CASCADE,
constraint FK_MOVIE_CAST_MOVIE foreign key (movie_id)
              references movie (movie_id)
			  on update cascade
			  on delete cascade

)
go


create table Movie_Director(
movie_id int not null,
person_id int not null,
constraint PK_MOVIE_DIRECTOR primary key (movie_id, person_id),
constraint FK_MOVIE_DIRECTOR_MOVIE foreign key (movie_id)
     references movie(movie_id),
constraint FK_MOVIE_DIRECTOR_PERSON foreign key (person_id)
               references person (person_id)
			   on update cascade
			   on delete cascade
)
go

create table Genre(
genre_name varchar(50) not null,
description varchar(255) null,
constraint PK_GENRE primary key (genre_name),

)
go

create table Movie_Genre(
movie_id int not null,
genre_name varchar(50) not null,
constraint PK_MOVIE_GENRE primary key (movie_id, genre_name),
constraint FK_MOVIE_GENRE_MOVIE foreign key (movie_id)
           references movie(movie_id)
		   on update cascade
		   on delete cascade,
constraint FK_MOVIE_GENRE_GENRE foreign key (genre_name)
           references genre(genre_name)
		   on update cascade
		   on delete cascade
)
go



create table Customer(
customer_mail_adress varchar(255) not null,
name varchar(255) not null,
paypal_account varchar(255) not null,
subscription_start date not null,
subscription_end date null,
password varchar(50) not null,
constraint PK_CUSTOMER primary key (customer_mail_adress),
constraint ck_customer CHECK(subscription_end != subscription_start),
constraint uc_paypal_account unique (paypal_account),

)
go
create table Watchhistory(
movie_id int not null,
customer_mail_adress varchar(255) not null,
watch_date date not null,
price numeric(5,2) not null,
invoiced bit not null,
constraint PK_WATCHHISTORY primary key (movie_id, customer_mail_adress, watch_date),
constraint FK_WATCHHISTORY_MOVIE foreign key (movie_id)
        references movie(movie_id)
		on update cascade
		on delete no action,
constraint FK_WATCHHISTORY_CUSTOMER foreign key (customer_mail_adress)
        references customer(customer_mail_adress)
		on update cascade
		on delete no action,
)
go

alter table movie
add constraint ck_movie_price check (price > 0)

alter table watchhistory
add constraint ck_watchhistory_price check (price> 0)

alter table customer
add constraint ck_customer_subscription check (subscription_end > subscription_start)