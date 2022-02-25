USE Horticool;

CREATE TABLE depots(
   depot_id INT,
		PRIMARY KEY(depot_id)
);
CREATE TABLE geographical_areas(
   geographical_name VARCHAR(64),
		PRIMARY KEY(geographical_name)
);

CREATE TABLE cities(
   city_zipcode VARCHAR(5),
   city_name VARCHAR(64) NOT NULL,
   depot_id INT NOT NULL,
   geographical_name VARCHAR(64) NOT NULL,
		PRIMARY KEY(city_zipcode),
		FOREIGN KEY(depot_id) REFERENCES depots(depot_id),
		FOREIGN KEY(geographical_name) REFERENCES geographical_areas(geographical_name)
);

CREATE TABLE meetings(
   meeting_date DATE,
		PRIMARY KEY(meeting_date)
);

CREATE TABLE members(
   member_id INT,
   member_first_name VARCHAR(32) NOT NULL,
   production_type VARCHAR(255) NOT NULL,
   city_zipcode VARCHAR(5) NOT NULL,
		PRIMARY KEY(member_id),
		FOREIGN KEY(city_zipcode) REFERENCES cities(city_zipcode)
);

CREATE TABLE reservations(
   reservation_id INT,
   reservation_products VARCHAR(32) NOT NULL,
   reservation_quantity INT NOT NULL,
   meeting_date DATE NOT NULL,
   member_id INT NOT NULL,
		PRIMARY KEY(reservation_id),
		FOREIGN KEY(meeting_date) REFERENCES meetings(meeting_date),
		FOREIGN KEY(member_id) REFERENCES members(member_id)
);

CREATE TABLE products(
   product_variety VARCHAR(64),
   product_type VARCHAR(64) NOT NULL,
   product_price INT NOT NULL,
   product_quantity INT NOT NULL,
   member_id INT NOT NULL,
   reservation_id INT NOT NULL,
		PRIMARY KEY(product_variety),
		FOREIGN KEY(member_id) REFERENCES members(member_id),
		FOREIGN KEY(reservation_id) REFERENCES reservations(reservation_id)
);

