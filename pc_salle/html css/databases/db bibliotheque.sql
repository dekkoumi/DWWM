DROP DATABASE IF EXISTS db_bibliotheque;

CREATE DATABASE IF NOT EXISTS db_bibliotheque;

USE db_bibliotheque;

CREATE TABLE CUSTOMERS
(
CUSTOMER_ID int primary key,
CUSTOMER_FIRSTNAME varchar (50) not null,
CUSTOMER_LASTNAME varchar(50) not null,
CUSTOMER_ADDRESS varchar (255) not null,
CUSTOMER_DEPOSIT decimal not null
);

CREATE TABLE BOOKS
(
BOOK_NUMBER int primary key,
BOOK_PUBLISHER varchar (101) not null,
BOOK_TITLE varchar (255) not null,
BOOK_DATE_PURCHASE date not null,
BOOK_STATE varchar (15) not null
);

CREATE TABLE BORROWS
(
BORROW_NUMBER int primary key,
BORROW_DATE date not null,
BORROW_DATE_RETURN date not null
);

CREATE TABLE AUTHORS
(
AUTHOR_ID int primary key,
AUTHOR_FIRSTNAME varchar (50) not null,
AUTHOR_LASTNAME varchar (50) not null
);

CREATE TABLE MAKE 
(
CUSTOMER_ID int,
BORROW_NUMBER int,
primary key (CUSTOMER_ID, BORROW_NUMBER),
foreign key (CUSTOMER_ID) references CUSTOMERS (CUSTOMER_ID),
foreign key (BORROW_NUMBER) references BORROWS (BORROW_NUMBER)
);

CREATE TABLE EDIT 
(
BOOK_NUMBER int,
AUTHOR_ID int,
primary key (BOOK_NUMBER, AUTHOR_ID),
foreign key (BOOK_NUMBER) references BOOKS (BOOK_NUMBER),
foreign key (AUTHOR_ID) references AUTHORS (AUTHOR_ID)
);

