DROP DATABASE IF EXISTS db_course_de_chevaux;

CREATE DATABASE IF NOT EXISTS db_course_de_chevaux;

USE db_course_de_chevaux;

CREATE TABLE PARIS
(
PARI_ID int primary key,	
PARI_GAGNANT boolean not null,
PARI_TYPE varchar (10) not null
);

CREATE TABLE CHEVAUX 
(
CHEVAL_ID int primary key,
CHEVAL_NOM varchar (25) not null
);

CREATE TABLE EVENEMENTS
(
EVENEMENT_ID int primary key,
EVENEMENT_ADRESSE varchar (24) not null,
EVENEMENT_NOM varchar (32) not null,
EVENEMENT_DATE date not null
);

CREATE TABLE PARIER
(
PARI_ID int,
CHEVAL_ID int,
primary key (PARI_ID, CHEVAL_ID),
foreign key (PARI_ID) references PARIS(PARI_ID),
foreign key (CHEVAL_ID) references CHEVAUX (CHEVAL_ID)
);
