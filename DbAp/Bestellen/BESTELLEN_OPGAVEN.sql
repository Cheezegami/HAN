delete from Bestellingen
delete from Bestelregels
delete from Artikelen
delete from Leveranciers

Select * from Leveranciers
Select * from Artikelen
Select * from Bestellingen
Select * from Bestelregels


-- 1 --
select leverancier, count(*) AS aantal
from Bestellingen
group by leverancier

-- 2 --
select bestellingen.leverancier,naam, count(*) AS aantal
from Bestellingen INNER JOIN Leveranciers ON bestellingen.leverancier = Leveranciers.leveranciercode
group by bestellingen.leverancier, Leveranciers.naam

-- 3 --
select bestellingen.leverancier,naam, count(*) AS aantal
from Bestellingen INNER JOIN Leveranciers ON bestellingen.leverancier = Leveranciers.leveranciercode
group by bestellingen.leverancier, Leveranciers.naam
having count(*) > 2

-- 4 --
select bestellingen.leverancier,naam, count(*) AS aantal
from Bestellingen INNER JOIN Leveranciers ON bestellingen.leverancier = Leveranciers.leveranciercode
where bestellingen.besteldatum > '2015-10-1'
group by bestellingen.leverancier, Leveranciers.naam

-- 5 --



