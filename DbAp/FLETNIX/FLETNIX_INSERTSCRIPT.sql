INSERT INTO Movie VALUES 
(1,'The Matrix',150,'The Matrix is a 1999 American-Australian science fiction action film written and directed by The Wachowskis',1999,NULL,NULL,15,'https://youtu.be/m8e-FF8MsqU'),
(2,'The Matrix: Reloaded',138,'The Matrix Reloaded is a 2003 American-Australian science fiction action film',2003,NULL,1,20,'https://youtu.be/kYzz0FSgpSU'),
(3,'Spectre',148,'A Cryptic message from Bonds past sets him on a trail to uncover a sinister organisation',2015,NULL,NULL,30,'https://youtu.be/LTDaET-JweU'),
(4,'The Godfather',175,'The aging patriarch of an organized crime dynasty tranfers control of his clandestine empire to his reluctant son.',1972,NULL,NULL,15,'https://youtu.be/OfnUvYn6HoM'),
(5,'Fight Club',139,'An insomniac office workers, looking for a way to change his life crosses paths with a devil-may-care soap maker, forming and underground fight club that evolves into something much more',1999,NULL,NULL,18,'https://youtu.be/SUXWAEX2jlg'),
(6,'Princess Mononoke',134,'On a journey to find a cure Ashitaka finds himself in the middle of a battle between the forest gods and a mining colony',1997,NULL,NULL,16,'https://youtu.be/4OiMOHRDs14'),
(7,'The Dark Knight',152,'When the manace known as the Joker wreaks havoc and chaos on the people, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice',2008,NULL,NULL,10,'https://youtu.be/EXeTwQWrcwY'),
(8,'The Terminator',107,'A human-looking indestructible cyborg is sent from 2029 to 1984 to assassinate a waitress.',1984,NULL,NULL,23,'https://youtu.be/c4Jo8QoOTQ4'),
(9,'Conan the Barbarian',129,'A vengeful barbarian warrior sets off to avenge his tribe and his parents whom were slain by an evil sorcerer and his warriors when he was a boy.',1982,NULL,NULL,21,'https://youtu.be/xwdYd_RdLCQ')
--	movie_id,title,duration,description,publication_year,cover_image,previous_part,price,URL



INSERT INTO Person VALUES
(1,'Wachowski','Lana','F'),
(2,'Wachowski','Andrew Paul','M'),
(3,'Reeves','Keanu','M'),
(4,'Mendes','Sam','M'),
(5,'Coppola','Francis Fort','M'),
(6,'Schwarzenegger','Arnold','M'),
(7,'Cameron','James','M')
 -- Person_id,lastname,firstname,gender

 INSERT INTO Movie_Cast VALUES
 (1,1,'Director'),
 (1,2,'Director'),
 (1,3,'Neo'),
 (2,1,'Director'),
 (2,2,'Director'),
 (2,3,'Neo'),
 (3,4,'Director'),
 (4,5,'Director'),
 (8,6,'The Terminator'),
 (8,7,'Director'),
 (9,6,'Conan')
 -- movie_id,person_id,role

 INSERT INTO Genre VALUES
 ('Sci-Fi','Movies that are full of exciting action packed sequences'),
 ('Action','Stands for Science-Fiction, these are futuristic movies'),
 ('Drama','A mixture of comedy and tragedy'),
 ('Crime','Movies in which criminality plays a big part'),
 ('Animation','Movies that are drawn or animated instead of acted by actors'),
 ('Adventure','Moves that consist of characters traveling around'),
 ('Fantasy','Movies that are based on fiction')
 -- genre_naam,description

 INSERT INTO Movie_Genre VALUES
 (1,'Sci-Fi'),
 (1,'Action'),
 (2,'Sci-FI'),
 (2,'Action'),
 (3,'Action'),
 (4,'Drama'),
 (4,'Crime'),
 (5,'Action'),
 (5,'Crime'),
 (6,'Animation'),
 (6,'Fantasy'),
 (6,'Adventure'),
 (7,'Action'),
 (7,'Crime'),
 (7,'Drama'),
 (8,'Action'),
 (9,'Fantasy'),
 (9,'Adventure')
 -- movie_id,genre_naam

INSERT INTO Customer VALUES
 ('kevin9595@gmail.com','Kevin van Doorn','kvd007','2015-11-10',NULL,'QWERTYUIOP'),
 ('NaySlayer@hotmail.com','John Johnson','K1ll0RBeK','2014-4-10',NULL,'ASDFGHJKL'),
 ('HenkBouwman@Telfort.nl','Henk Bouwman','TheAmazingHenk','2006-6-19',NULL,'ZXCVBNM'),
 ('RealWendy@gmail.com','Wendy Tuin','RealWendy','2010-4-20',NULL,'TimeForPasswurd'),
 ('JanSoep@kpn.nl','Jan Soep','Jan-Soep','2012-10-12',NULL,'SuperSoepMan'),
 ('HarryTerminator@live.nl','Harry Boter','HarrySchwarzenegger','2013-12-17',NULL,'R0B0TUPRISING'),
 ('JohnCena@WWE.org','John Cena','TheONLYWWECHAMPION','2015-5-9',NULL,'OnePunchMan'),
 ('OtakuWarrior420@gmail.com','Remon Nade','XxXNarutoXxX','2014-1-14',NULL,'SasuckeS'),
 ('Lucina19@hotmail.com','Lucina Hooghuis','Lucina19','2011-9-9',NULL,'Sail19Ships'),
 ('HansHandig@gmail.com','Hans Huisman','Hansje42','2012-11-12',NULL,'FixItHans'),
 ('PietjePete@netboss.co-uk','Pete Peter','Peeteasy','2010-10-26','2012-12-12','PEEEEEETEEEEEEEEEEEEEEEEER')
 --customer_mail_adress,name,paypal_account,subscription_start,subscription_end,password

 INSERT INTO Watchhistory VALUES
 (1,'kevin9595@gmail.com','2015-11-13',15,1),
 (3,'kevin9595@gmail.com','2015-11-14',30,1),
 (5,'kevin9595@gmail.com','2015-11-14',18,1),
 (7,'kevin9595@gmail.com','2015-11-15',10,0),
 (1,'NaySlayer@hotmail.com','2015-11-11',15,0),
 (2,'NaySlayer@hotmail.com','2015-11-12',20,0),
 (3,'NaySlayer@hotmail.com','2015-11-13',30,0),
 (4,'NaySlayer@hotmail.com','2015-11-14',15,0),
 (1,'HenkBouwman@Telfort.nl','2015-11-12',15,1),
 (2,'HenkBouwman@Telfort.nl','2015-11-13',20,1),
 (4,'HenkBouwman@Telfort.nl','2015-11-14',15,1),
 (5,'HenkBouwman@Telfort.nl','2015-11-15',18,1),
 (1,'RealWendy@gmail.com','2015-11-16',15,1),
 (2,'RealWendy@gmail.com','2015-11-17',20,1),
 (6,'RealWendy@gmail.com','2015-11-14',16,1),
 (7,'RealWendy@gmail.com','2015-11-13',10,1),
 (1,'JanSoep@kpn.nl','2015-11-14',15,1),
 (2,'JanSoep@kpn.nl','2015-11-14',20,1),
 (5,'JanSoep@kpn.nl','2015-11-14',18,0),
 (7,'JanSoep@kpn.nl','2015-11-15',10,1),
 (1,'HarryTerminator@live.nl','2015-11-12',15,1),
 (2,'HarryTerminator@live.nl','2015-11-13',20,1),
 (3,'HarryTerminator@live.nl','2015-11-12',30,0),
 (7,'HarryTerminator@live.nl','2015-11-13',10,0),
 (1,'JohnCena@WWE.org','2015-11-14',15,0),
 (2,'JohnCena@WWE.org','2015-11-14',20,0),
 (3,'JohnCena@WWE.org','2015-11-14',30,0),
 (5,'JohnCena@WWE.org','2015-11-14',18,1),
 (1,'OtakuWarrior420@gmail.com','2015-11-14',15,1),
 (2,'OtakuWarrior420@gmail.com','2015-11-13',20,1),
 (5,'OtakuWarrior420@gmail.com','2015-11-16',18,1),
 (6,'OtakuWarrior420@gmail.com','2015-11-18',16,1),
 (1,'Lucina19@hotmail.com','2015-11-13',15,1),
 (3,'Lucina19@hotmail.com','2015-11-14',30,1),
 (4,'Lucina19@hotmail.com','2015-11-17',15,1),
 (6,'Lucina19@hotmail.com','2015-11-18',16,1),
 (1,'HansHandig@gmail.com','2015-11-14',15,1),
 (2,'HansHandig@gmail.com','2015-11-15',20,1),
 (3,'HansHandig@gmail.com','2015-11-14',30,1),
 (7,'HansHandig@gmail.com','2015-11-17',10,1)
 --movie_id,customer_mail_adress,watch_date,price,invoiced

