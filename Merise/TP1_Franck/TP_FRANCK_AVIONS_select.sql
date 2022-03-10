USE db_fly;

--1	Quels sont les vols au départ de Paris entre 12h et 14h ?
SELECT * 
FROM vols
WHERE ville_depart = 'PARIS' AND heure_depart BETWEEN 12 AND 14;

--2	Quels sont les pilotes dont le nom commence par "S" ?
SELECT *
FROM pilotes
WHERE pilNom LIKE 's%';

--3	Pour chaque ville, donner le nombre et les capacités minimum et maximum des avions qui s'y trouvent.
SELECT av, avLoc, MIN(avCap)AS minimal, MAX(avCap) as maximal
FROM avions
GROUP BY av, avLoc; 

--4	Pour chaque ville, donner la capacité moyenne des avions qui s'y trouvent et cela par type d'avion.
SELECT avType, AVG(avCap) AS moyenne
FROM avions
GROUP BY avType;

--5	Quelle est la capacité moyenne des avions pour chaque ville ayant plus de 1 avion ?
SELECT avType, AVG(avCap) AS moyenne
FROM avions
GROUP BY avType, avLoc
HAVING COUNT(av) > 1; 

--6	Quels sont les noms des pilotes qui habitent dans la ville de localisation d'un Airbus 
SELECT pilNom
FROM pilotes
WHERE pilAdresse IN (SELECT avLoc FROM avions WHERE avMarque = 'AIRBUS');

--7	Quels sont les noms des pilotes qui conduisent un Airbus et qui habitent dans la ville de localisation d'un Airbus ?



--8	Quels sont les noms des pilotes qui conduisent un Airbus ou qui habitent dans la ville de localisation d'un Airbus ?



--9	Quels sont les noms des pilotes qui conduisent un Airbus sauf ceux qui habitent dans la ville de localisation d'un Airbus ?



--10	Quels sont les vols ayant un trajet identique ( VD, VA ) à ceux assurés par Serge ?
SELECT ville_depart, ville_arrivee, pilNom
FROM vols
	INNER JOIN pilotes ON pil = pilote
WHERE pilNom = 'SERGE'

--11	Donner toutes les paires de pilotes habitant la même ville ( sans doublon ).



--12	Quels sont les noms des pilotes qui conduisent un avion que conduit aussi le pilote n°1 ?



--13	Donner toutes les paires de villes telles qu'un avion localisé dans la ville de départ soit conduit par un pilote résidant dans la ville d'arrivée.




--14	Sélectionner les numéros des pilotes qui conduisent tous les Airbus ?
SELECT pilote
FROM vols
	INNER JOIN avions ON av = avion
WHERE pilote LIKE (SELECT avMarque FROM avions WHERE avMarque = 'AIRBUS');