select * from Begeleider
select * from Cursus
select * from Docent 
select * from Inschrijving
select * from Student
select * from Tentamen
select * from Vakgroep
select * from Voorkenniseis

-- Thema Opdracht 4 --
-- A --
Select Student.naam, Student.nr,Cursus.naam,Inschrijving.cijfer
FROM Student,Inschrijving,Cursus
WHERE Student.nr = Inschrijving.student AND Cursus.code = Inschrijving.cursus

-- B --
select voorkenniseis.cursus, cursus.uren
FROM Voorkenniseis,cursus
WHERE Voorkenniseis.cursus = cursus.code

select voorkenniseis.cursus, cursus.uren
FROM Voorkenniseis INNER JOIN cursus
ON Voorkenniseis.cursus = cursus.code
-- C --
SELECT *
FROM Student, Inschrijving

/* Dit zorgt ervoor dat er gegevens vermenigvuldigd worden. In dit geval heb je twee lijsten met een studentnummer. 
Deze 2 lijsten komen in de meeste gevallen niet overeen en deze gegevens zijn dan niet representatief voor wat er gevraagd wordt.
De combinatie van twee verschillende studentennummers voor een student is namelijk niet mogelijk en er zal dus verkeerde informatie gelevert. worden.
*/

-- D --
Select student.nr,student.naam,cursus.code,cursus.naam,cursus.examinator
FROM Inschrijving
FULL OUTER JOIN Student ON student.nr = Inschrijving.student
INNER JOIN Cursus ON Inschrijving.cursus = cursus.code

-- E --
Select Student.naam, Student.nr,Cursus.naam,Inschrijving.cijfer
FROM Inschrijving
INNER JOIN Student ON student.nr = Inschrijving.student
INNER JOIN Cursus ON Inschrijving.cursus = cursus.code
WHERE cijfer is not null

-- F --
select A.naam AS docent, B.naam AS vervanger
FROM docent A LEFT OUTER JOIN docent B ON A.vervanger= B.acr
select * from Docent 