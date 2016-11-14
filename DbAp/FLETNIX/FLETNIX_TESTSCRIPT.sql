-- Weergeven van de tabellen binnen het database.
SELECT * FROM Movie
SELECT * FROM Person
SELECT * FROM Movie_Cast
SELECT * FROM Genre
SELECT * FROM Movie_Genre
SELECT * FROM Customer
SELECT * FROM Watchhistory 

-- Verwijderen van de tabellen binnen het database.
DELETE FROM Watchhistory
DELETE FROM Customer
DELETE FROM Movie_Genre
DELETE FROM Genre
DELETE FROM Movie_Cast
DELETE FROM Person
DELETE FROM Movie

--test van constraint dat gender 'M' of'F' moet zijn
--werkt omdat het een 'F' is
insert into person values(10,'bbb','aaa','F')
--werkt niet omdat gender v is
insert into person values(11,'ccc','ddd','V')

--test van publication_year tussen 1890 en huidig jaar
--werkt omdat het tussen de jaartallen zit
insert into movie values(1,'a',5,null,1950,null,null,4,null)
--werkt niet omdat het jaar boven 2015 is
insert into movie values(2,'b',5,null,2050,null,null,5,null)
--werkt niet omdat het jaar onder 1890 is
insert into movie values(3,'c',5,null,1600,null,null,5,null)

--test van subscription_start voor datum van suscription_end
--werkt omdat subscription_end na subscription_start is
insert into customer values('a','b','paypal1','2015-10-10','2015-10-11', 'e')
--werkt niet omdat subscription_end voor subscription_start is
insert into customer values('b','b','paypal2','2015-10-10','2015-10-09', 'f')

--test van het uniek zijn van het paypal_account
--werkt omdat het paypal_account uniek is
insert into customer values('c','b','paypal3','2015-10-10','2015-10-11', 'g')
--werkt niet want paypal3 is niet uniek meer
insert into customer values('d','b','paypal3','2015-10-10','2015-10-11', 'g')

--test van het niet null zijn van het genre
--werkt omdat het niet null is
insert into genre values('TestA','TestB')
--werkt niet omdat het null is
insert into genre values(NULL,'TestC')

--testen van uniek zijn movie_genre en genre_naam
--werkt omdat dit niet eerder gebruikt is
insert into Movie_Genre values(1,'Actie')
--werkt omdat deze combinatie niet eerder gebruikt is
insert into Movie_Genre values(2,'Actie')
--werkt niet omdat deze combinatie al eerder gebruikt is
insert into Movie_Genre values(2,'Actie')

--testen van het uniek zijn van een customer mail adress
--werkt omdat dit mail adress niet eerder gebruikt is
insert into Customer values('test@test.test','testJan','TestPaypal1',2000-1-1,NULL)
--werkt niet omdat dit mail adress al eerder gebruikt is
insert into Customer values('test@test.test','testJan2','TestPaypal2',2000-1-1,NULL)
