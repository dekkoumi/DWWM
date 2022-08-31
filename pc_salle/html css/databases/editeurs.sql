DROP DATABASE IF EXISTS db_editeur;

CREATE DATABASE IF NOT EXISTS db_editeur;

USE db_editeur;

CREATE TABLE LIVRES
(
LIVRE_NUMERO int primary key,
LIVRE_TITRE varchar (25) not null,
LIVRE_PRIX decimal (4.2) not null,
LIVRE_DATE date not null
);

CREATE TABLE LIBRAIRIES 
(
LIBRAIRIE_SIRET int primary key,
LIBRAIRIE_NOM varchar (50) not null,
LIBRAIRIE_ADRESSE varchar (255) not null,
LIBRAIRIE_COMMANDE varchar (255) not null
);

CREATE TABLE AUTEURS
(
AUTEUR_NUMERO int primary key,
AUTEUR_NOM varchar (50)not null,
AUTEUR_PRENOM varchar (50) not null,
AUTEUR_PSEUDO varchar (50) not null
);

CREATE TABLE ECRIRE
(
LIVRE_NUMERO int,
AUTEUR_NUMERO int,
primary key (LIVRE_NUMERO, AUTEUR_NUMERO),
foreign key (LIVRE_NUMERO) references LIVRES (LIVRE_NUMERO),
foreign key (AUTEUR_NUMERO) references AUTEURS (AUTEUR_NUMERO)
);

CREATE TABLE COMMANDER 
(
LIVRE_NUMERO int,
LIBRAIRIE_SIRET int,
primary key (LIVRE_NUMERO,LIBRAIRIE_SIRET),
foreign key (LIVRE_NUMERO) references LIVRES (LIVRE_NUMERO),
foreign key (LIBRAIRIE_SIRET) references LIBRAIRIES (LIBRAIRIE_SIRET)
);
