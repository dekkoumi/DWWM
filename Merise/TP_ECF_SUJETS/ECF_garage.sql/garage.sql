--CREATE DATABASE garage;
--apres 1ere execution on commente la 1ere ligne
USE garage;

CREATE TABLE realisations (
 id_rea int NOT NULL,
 titre_rea varchar(255) NOT NULL,
 date_rea date NOT NULL,
 texte_rea text NOT NULL
 );


 CREATE TABLE images (
 id_img int NOT NULL,
 url_img varchar(250) NOT NULL,
 nom_img varchar(100) NOT NULL,
 text_img varchar(300) NOT NULL,
 ext_img varchar(5) NOT NULL );--ici on supprime id_rea dans le cas d'une auto_incrémentationALTER TABLE realisations 	DROP COLUMN id_rea;

-- on re crée l'attribut id_rea avec l'auto_incrémentation 
ALTER TABLE realisations
	ADD id_rea int NOT NULL IDENTITY;

-- on ajoute une contrainte de clé primaire 
ALTER TABLE realisations
	ADD CONSTRAINT PK_id_rea PRIMARY KEY (id_rea);



ALTER TABLE images
	DROP COLUMN id_img;

ALTER TABLE images
	ADD id_img int NOT NULL IDENTITY;

ALTER TABLE images
	ADD CONSTRAINT PK_id_img PRIMARY KEY (id_img);

