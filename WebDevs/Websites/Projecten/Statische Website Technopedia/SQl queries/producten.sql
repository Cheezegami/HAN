drop table product
go
create table product
(
nummer numeric(3) not null,
productnaam varchar(50) not null,
prijs numeric(6,2)not null,
beschrijving varchar(500) not null,
plaatje varchar(50) not null, 
constraint PK_nummer primary key (nummer)

)
go