SELECT AVG(speelduur) AS gemspeelduur, max(speelduur) AS maxspeelduur
FROM Stuk

select genrenaam, count(*) AS aantal
from stuk
group by genrenaam
order by 2 DESC

select genrenaam, count(*) AS aantal
from stuk
where niveaucode is not null
group by genrenaam
order by 2 DESC

select genrenaam, count(*) AS aantal
from stuk
group by genrenaam
having COUNT(*) >=1
order by 2 DESC

select componist.componistId AS ID,naam, count(*) AS aantal
from stuk INNER JOIN Componist ON stuk.componistId = Componist.componistId
group by naam, componist.componistId
order by naam

select N.omschrijving, N.niveaucode, COUNT(*) as aantal
from stuk S right outer join niveau N on N.niveaucode = S.niveaucode
where n.niveaucode is not null
group by N.niveaucode, N.omschrijving


--- Thema 6 Opdrachten ---
-- A --
select stuk.componistId, Componist.naam, COUNT(*) as aantal
from stuk INNER JOIN Componist ON stuk.componistId = Componist.componistId
group by stuk.componistId, componist.naam
having count(*) >= 2
order by aantal desc

-- B --
select stuk.stuknr, stuk.titel, componist.naam, count(*) as aantal
from stuk INNER JOIN Componist ON stuk.componistId = Componist.componistId INNER JOIN Bezettingsregel ON stuk.stuknr = Bezettingsregel.stuknr
group by stuk.stuknr, titel, naam
having sum(aantal) > 1

-- C --
/* Having wordt vaker gebruikt bij telfuncties,
terwijl where wordt gebruikt om een plaats aan te geven. 
*/

-- D --
/* Dit wordt veroorzaakt wanneer er een Count(*) functie wordt aangeroepen.
Dit is te verhelpen door een group by te maken of de count(*) functie weg te halen.
*/



