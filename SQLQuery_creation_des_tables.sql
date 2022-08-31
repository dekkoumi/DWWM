USE Horticool;

CREATE TABLE Depots(
   Depot_id INT IDENTITY(1,1),
   CONSTRAINT PK_Depots_Depot_id PRIMARY KEY(Depot_id)
);

CREATE TABLE Geographical_areas(
   Geographical_name VARCHAR(64),
   CONSTRAINT PK_Geograhical_areas_Geographical_name PRIMARY KEY(Geographical_name)
);

CREATE TABLE Cities(
   City_zipcode VARCHAR(5),
   City_name VARCHAR(64) NOT NULL,
   Depot_id INT NOT NULL,
   Geographical_name VARCHAR(64) NOT NULL,
   CONSTRAINT PK_Cities_City_zipcode PRIMARY KEY(City_zipcode),
   CONSTRAINT FK_Cities_Depot_id FOREIGN KEY(Depot_id) REFERENCES Depots(Depot_id),
   CONSTRAINT FK_Cities_Geographical_name FOREIGN KEY(Geographical_name) REFERENCES Geographical_areas(Geographical_name)
);

CREATE TABLE Meetings(
   Meeting_id INT IDENTITY(1,1),
   Meeting_date DATE NOT NULL,
   Depot_id INT NOT NULL,
   CONSTRAINT PK_Meetings_Meeting_id PRIMARY KEY(Meeting_id),
   CONSTRAINT FK_Meetings_Depot_id FOREIGN KEY(Depot_id) REFERENCES Depots(Depot_id)
);

CREATE TABLE Members(
   Member_id INT IDENTITY(1,1),
   Member_first_name VARCHAR(32) NOT NULL,
   Production_type VARCHAR(255) NOT NULL,
   Credit_amount DECIMAL(6,2) NOT NULL,
   City_zipcode VARCHAR(5) NOT NULL,
   CONSTRAINT PK_Members_Member_id PRIMARY KEY(Member_id),
   CONSTRAINT FK_Members_City_zipcode FOREIGN KEY(City_zipcode) REFERENCES Cities(City_zipcode)
);

CREATE TABLE Reservations(
   Reservation_id INT IDENTITY(1,1),
   Reservation_products VARCHAR(32) NOT NULL,
   Reservation_quantity INT NOT NULL,
   Meeting_id INT NOT NULL,
   Member_id INT NOT NULL,
   CONSTRAINT PK_Reservations_Reservation_id PRIMARY KEY(Reservation_id),
   CONSTRAINT FK_Reservations_Meeting_id FOREIGN KEY(Meeting_id) REFERENCES Meetings(Meeting_id),
   CONSTRAINT FK_Reservations_member_id FOREIGN KEY(Member_id) REFERENCES Members(Member_id)
);

CREATE TABLE Products(
   Product_variety VARCHAR(64),
   Product_type VARCHAR(64) NOT NULL,
   Product_price INT NOT NULL,
   Product_quantity INT NOT NULL,
   Member_id INT NOT NULL,
   Reservation_id INT NOT NULL,
   CONSTRAINT PK_Products_Product_variety PRIMARY KEY(Product_variety),
   CONSTRAINT FK_Products_Member_id FOREIGN KEY(Member_id) REFERENCES Members(Member_id),
   CONSTRAINT FK_Products_Reservation_id FOREIGN KEY(Reservation_id) REFERENCES Reservations(Reservation_id)
);
