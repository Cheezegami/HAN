select *
from Componist,Muziekschool
where Componist.schoolId = Muziekschool.schoolId

select *
from Muziekschool


select *
from Componist

select *
from Stuk INNER JOIN Componist
On Stuk.componistId = Componist.componistId
where geboortedatum > 1990-12-31 AND schoolId IS NOT NULL AND stuknrOrigineel IS NULL

Select Componist.*,Muziekschool.naam,plaatsnaam
From Componist INNER JOIN Muziekschool
	On Componist.schoolId = Muziekschool.schoolId

SELECT Componist.*,Muziekschool.*
FROM Componist RIGHT OUTER JOIN Muziekschool
ON Componist.schoolId = Muziekschool.schoolId

SELECT Stuknr,titel,Componist.*
FROM Stuk RIGHT OUTER JOIN Componist
ON Stuk.componistId = Componist.componistId
WHERE SchoolId IS NOT NULL

SELECT Stuknr,titel,Componist.naam,Muziekschool.naam
FROM Stuk,Componist, Muziekschool
WHERE Stuk.componistId = Componist.componistId AND Componist.schoolId = Muziekschool.schoolId
AND componist.schoolId IS NOT NULL

SELECT * FROM STUK

SELECT Stuk.*,Niveau.omschrijving
FROM Stuk LEFT OUTER JOIN Niveau
ON Stuk.niveaucode = Niveau.niveaucode
WHERE genrenaam = 'Jazz'

Select AA.stuknr,AA.titel,BB.stuknr,BB.titel
FROM Stuk AA Inner Join Stuk BB
ON AA.StuknrOrigineel = BB.stuknr