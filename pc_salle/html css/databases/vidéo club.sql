DROP DATABASE IF EXISTS db_club_video;

CREATE DATABASE IF NOT EXISTS db_club_video;

USE db_club_video;

CREATE TABLE CLIENTS 
(
CLIENT_ID int primary key,
CLIENT_NOM varchar (32) not null,
CLIENT_PRENOM varchar(32) not null,
CLIENT_ADRESSE varchar (32) not null,
CLIENT_CAUTION decimal (5.2) not null 
);

CREATE TABLE EMPRUNTS
(
EMPRUNT_NUMERO int primary key,
EMPRUNT_DATE_RETOUR date not null,
EMPRUNT_DATE date not null
);

CREATE TABLE CASSETTES
(
CASSETTE_NUMERO int primary key,
CASSETTE_TITRE varchar (20),
CASSETTE_ETAT varchar (15),
CASSETTE_GENRE varchar (20)
);
