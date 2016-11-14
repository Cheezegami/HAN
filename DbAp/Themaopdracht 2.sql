/* Thema Opdracht 2.1*/
select titel, genrenaam, jaartal from stuk
where niveaucode = 'A' and (genrenaam = 'pop' OR genrenaam = 'jazz')
ORDER by jaartal desc, titel

select titel, genrenaam, jaartal, niveaucode from stuk
where niveaucode = 'A' and (genrenaam = 'pop' OR genrenaam = 'jazz')
ORDER by jaartal desc, titel

select titel, genrenaam, jaartal, niveaucode, componistId from stuk
where niveaucode = 'A' and (genrenaam = 'pop' OR genrenaam = 'jazz')
ORDER by jaartal desc, titel

/*Thema opdracht 2.2*/
select titel, niveaucode from stuk
where (niveaucode = 'B' OR niveaucode = 'C') and genrenaam = 'klassiek' and stuknrOrigineel IS NULL
ORDER by titel

INSERT INTO stuk VALUES
(17,2,'Cheeseburger',null,'klassiek','c',10,1893);

DELETE FROM stuk
WHERE stuknr = 16

SELECT titel, omschrijving, niveau.niveaucode
FROM niveau,stuk
WHERE stuk.niveaucode = niveau.niveaucode
ORDER BY niveaucode

select * from stuk
