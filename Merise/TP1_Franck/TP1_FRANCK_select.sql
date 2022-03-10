--CREATE DATABASE db_fly;

USE db_fly;

DROP TABLE vols;
DROP TABLE pilotes;
DROP TABLE avions;

CREATE TABLE avions(
	av SMALLINT NOT NULL,
	avMarque VARCHAR(32) NOT NULL,
	avType VARCHAR(15) NOT NULL,
	avCap SMALLINT NOT NULL,
	avLoc VARCHAR(50) NOT NULL
		CONSTRAINT PK_Avions_av_id PRIMARY KEY(av)
);

CREATE TABLE pilotes(
	pil TINYINT NOT NULL,
	pilNom VARCHAR(32)NOT NULL,
	pilAdresse VARCHAR(32) NOT NULL
		CONSTRAINT PK_Pilotes_pil_id PRIMARY KEY(pil)
);

CREATE TABLE vols(
	vol VARCHAR (5) PRIMARY KEY,
	avion SMALLINT NOT NULL,
	pilote TINYINT NOT NULL,
	ville_depart VARCHAR (32) NOT NULL,
	ville_arrivee VARCHAR (32) NOT NULL,
	heure_depart TINYINT  NOT NULL,
	heure_arrivee TINYINT NOT NULL,
		CONSTRAINT FK_Avions_avion FOREIGN KEY (avion) REFERENCES avions (av),
		CONSTRAINT FK_Pilotes_pilote FOREIGN KEY (pilote) REFERENCES pilotes (pil),
);
DROP TRIGGER insertVol;
--création trigger
CREATE TRIGGER insertVol
	ON vols
	AFTER INSERT
AS
	BEGIN
		DECLARE
		@vol VARCHAR (5),
		@avion SMALLINT
			SET NOCOUNT ON;

	SELECT @avion =INSERTED.avion,
			@vol = INSERTED.vol
				FROM INSERTED;
	PRINT(@avion)
	PRINT(@vol) 
	END

INSERT INTO vols(vol,avion,pilote,ville_depart,ville_arrivee,heure_depart,heure_arrivee)
VALUES
('IT311',100,2,'PARIS','TOULOUSE',11,12),
('IT312',101,1,'PARIS','NICE',12,14),
('IT313',105,3,'GRENOBLE','TOULOUSE',9,11),
('IT314',105,3,'TOULOUSE','GRENOBLE',17,19);
--https://sqlserverguides.com/sql-server-trigger-after-insert/
DROP PROCEDURE affiche_nom;

CREATE PROCEDURE affiche_nom
	@nom_pilote VARCHAR(30)
AS
SELECT pil, pilNom, pilAdresse
FROM pilotes
WHERE pilNom = @nom_pilote
SET NOCOUNT ON;  
EXEC affiche_nom 'CLAUDE';

SELECT pilNom
FROM pilotes 
 40  merise/training ECF/04 - tp_franck/TP_avion/db_fly_insert.sql 
@@ -0,0 +1,40 @@
USE db_fly;
INSERT INTO avions (av,avMarque,avType,avCap,avLoc)
VALUES
(100,'AIRBUS','A320',300,'Nice'),
(101,'BOEING','B707',250,'Paris'),
(102,'AIRBUS','A320',300,'Toulouse'),
(103,'CARAVELLE','Caravelle',200,'Toulouse'),
(104,'BOEING','B747',400,'Paris'),
(105,'AIRBUS','A320',300,'Grenoble'),
(106,'ATR',	'ATR42',50,	'Paris'),
(107,'BOEING','B727',300,'Lyon'),
(108,'BOEING','B727',300,'Nantes'),
(109,'AIRBUS','A340',350,'Bastia');
INSERT INTO pilotes (pil,pilNom,pilAdresse)
VALUES
(1,'SERGE','Nice'),
(2,'JEAN','Paris'),
(3,'CLAUDE','Grenoble'),
(4,'ROBERT','Nantes'),
(5,'SIMON','Paris'),
(6,'LUCIEN','Toulouse'),
(7,'BERTRAND','Lyon'),
(8,'HERVE','Bastia'),
(9,'LUC','Paris');
INSERT INTO vols (vol,avion,pilote,ville_depart,ville_arrivee,heure_depart,heure_arrivee)
VALUES
('IT100',100,1,'NICE','PARIS',7,9),
('IT101',100,2,'PARIS','TOULOUSE',11,12),
('IT102',101,1,'PARIS','NICE',12,14),
('IT103',105,3,'GRENOBLE','TOULOUSE',9,11),
('IT104',105,3,'TOULOUSE','GRENOBLE',17,19),
('IT105',107,7,'LYON','PARIS',6,7),
('IT106',109,8,'BASTIA','PARIS',10,13),
('IT107',106,9,'PARIS','BRIVE',	7,8),
('IT108',106,9,'BRIVE','PARIS',19,20),
('IT109',107,7,'PARIS','LYON',18,19),
('IT110',102,2,'TOULOUSE','PARIS',15,16),
('IT111',101,4,'NICE','NANTES',17,19),
('IT112',103,5,'PARIS','NICE',11,13),
('IT113',104,6,'NICE','PARIS',13,15); 
 69  merise/training ECF/04 - tp_franck/TP_avion/db_fly_select.sql 
@@ -0,0 +1,69 @@
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