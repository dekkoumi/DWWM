-- j'utilise la base de donnée selectionnée
USE db_video_club;
-- je détruis la table si elle existe déja 

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS borrow;
DROP TABLE IF EXISTS cassettes;
DROP TABLE IF EXISTS movies;


CREATE TABLE movies(
	movie_id INT NOT NULL,
	movie_name VARCHAR (50) NOT NULL,
	movie_actor VARCHAR (50) NOT NULL,
	movie_realisator VARCHAR (50) NOT NULL,
	movie_duration TIME NOT NULL,
	movie_public VARCHAR (50) NOT NULL,
	-- on renomme la clé primaire movie_id en PK_Movies_movie_id voir cours page 4
		CONSTRAINT PK_Movies_movie_id PRIMARY KEY (movie_id)
);

CREATE TABLE cassettes(
	cassette_number INT NOT NULL,
	cassette_title VARCHAR (24) NOT NULL,
	cassette_state VARCHAR (15) NOT NULL,
	cassette_gender VARCHAR (24) NOT NULL,
	movie_id INT,
	-- on renomme la clé primaire voir cours page 4
		CONSTRAINT PK_Cassettes_cassette_number PRIMARY KEY (cassette_number),
		--Contrainte sur les clés etrangeres on renomme la clé d'une autre table voir cours page 5
		CONSTRAINT FK_Movies_movie_id FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);

CREATE TABLE borrow(
	borrow_number INT NOT NULL,
	borrow_date DATE NOT NULL,
	borrow_date_return DATE NOT NULL,
	cassette_number INT,
	-- on renomme la clé primaire voir cours page 4
		CONSTRAINT PK_Borrow_borrow_number PRIMARY KEY (borrow_number),
		--Contrainte sur les clés etrangeres on renomme la clé d'une autre table voir cours page 5
		CONSTRAINT FK_Cassettes_cassette_number FOREIGN KEY (cassette_number) REFERENCES cassettes (cassette_number),
);

CREATE TABLE customers(
	customer_number INT NOT NULL,
	customer_firstname VARCHAR (32) NOT NULL,
	customer_lastname VARCHAR (32) NOT NULL,
	customer_address VARCHAR (255) NOT NULL,
	customer_deposit DECIMAL (5,2) NOT NULL,
	borrow_number INT,
	-- on renomme la clé primaire voir cours page 4
		CONSTRAINT PK_Customers_customer_number PRIMARY KEY (customer_number),
		--Contrainte sur les clés etrangeres on renomme la clé d'une autre table voir cours page 5
		CONSTRAINT FK_Borrow_borrow_number FOREIGN KEY (borrow_number) REFERENCES borrow (borrow_number),