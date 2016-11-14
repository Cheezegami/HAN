use BESTELLIJST

INSERT INTO Leveranciers VALUES
(1,'PostNL','Wegisweg','29a','2343UU','Lelistad'),
(2,'ServiceCourier','SuperVechterStraat','5','4321AB','Capcomdorp'),
(3,'PietersPost','Poststraat','12','5678IO','Postdorp')

INSERT INTO Bestellingen VALUES
(1,'2015-10-10',1),
(2,'2015-11-11',1),
(3,'2015-11-2',2),
(4,'2015-11-22',1),
(5,'2015-9-2',3),
(6,'2015-10-01',2)

INSERT INTO Artikelen VALUES
(1,'Appelsap',1.20),
(2,'Banaan',0.86),
(3,'Citroen',0.69),
(4,'Druiven',0.75),
(5,'Lipton Green Tea',1.39)

INSERT INTO Bestelregels VALUES
(1,1,40,'Ja'),
(1,2,30,'Nee'),
(2,2,30,'Ja'),
(3,5,50,'Ja')