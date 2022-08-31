DROP DATABASE IF EXISTS db_editor;

CREATE DATABASE IF NOT EXISTS db_editor;

USE db_editor;

CREATE TABLE IF NOT EXISTS books(
   book_isbn INT,
   book_price DECIMAL(5,2) NOT NULL,
   book_author VARCHAR(127) NOT NULL,
   book_editor VARCHAR(48) NOT NULL,
   book_date DATE NOT NULL,
   book_title VARCHAR(32) NOT NULL,
   PRIMARY KEY(book_isbn)
);

CREATE TABLE IF NOT EXISTS authors(
   author_id VARCHAR(24),
   author_lastname VARCHAR(32) NOT NULL,
   author_firstname VARCHAR(32) NOT NULL,
   author_nickname VARCHAR(24) NOT NULL,
   PRIMARY KEY(author_id)
);

CREATE TABLE IF NOT EXISTS librarys(
   library_siret VARCHAR(50),
   library_name VARCHAR(24) NOT NULL,
   library_adress VARCHAR(64) NOT NULL,
   library_command VARCHAR(255) NOT NULL,
   PRIMARY KEY(library_siret)
);

CREATE TABLE IF NOT EXISTS ecrit(
   book_isbn INT,
   author_id VARCHAR(24),
   PRIMARY KEY(book_isbn, author_id),
   FOREIGN KEY(book_isbn) REFERENCES books(book_isbn),
   FOREIGN KEY(author_id) REFERENCES authors(author_id)
);

CREATE TABLE IF NOT EXISTS contain(
   book_isbn INT,
   library_siret VARCHAR(50),
   PRIMARY KEY(book_isbn, library_siret),
   FOREIGN KEY(book_isbn) REFERENCES books(book_isbn),
   FOREIGN KEY(library_siret) REFERENCES librarys(library_siret)
);
