use master
go


drop database BESTELLIJST
go



create database BESTELLIJST
go


use BESTELLIJST
go
create table Leveranciers(
   leveranciercode         numeric(3)          not null,
   naam                    varchar(20)         not null,
   straatnaam              varchar(20)         not null,
   huisnr                  varchar(3)          not null,
   postcode                varchar(6)          null,
   plaatsnaam              varchar(15)         not null,
   constraint PK_LEVERANCIERS primary key (leveranciercode)
)
go
create table Bestellingen (
   bestellingnr            numeric(5)          not null,
   besteldatum             datetime            not null,
   leverancier             numeric(3)          not null,
constraint PK_BESTELLINGEN primary key (bestellingnr),
constraint FK_BESTELLINGEN foreign key (leverancier)
          references leveranciers(leveranciercode)
		  on update cascade
		  on delete cascade
)
go


create table Artikelen (
  artikelnr               varchar(6)          not null,
  omschrijving            varchar(25)         not null,
  prijs                   numeric(6,2)        not null,
constraint PK_ARTIKELEN primary key (artikelnr)
)
go


create table Bestelregels (
   bestelling              numeric(5)        not null,
   artikel                 varchar(6)        not null,
   aantal                  numeric(4)        not null,
   afgehandeld             varchar(3)        not null,
constraint PK_BESTELREGELS primary key (bestelling,artikel),
constraint FK_BESTELREGELS foreign key (bestelling)
		references bestellingen(bestellingnr)
		on update cascade
		on delete cascade,
constraint FK_BESTELREGELS2 foreign key (artikel)
		references artikelen(artikelnr)
		on update cascade
		on delete no action
)