CREATE DATABASE db_fly;

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