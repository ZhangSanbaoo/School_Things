
--Create Table Flight

CREATE TABLE Flight (
id_flight VARCHAR(20) NOT NULL,
max_capacity INT(3) NOT NULL,
current_capacity INT(3) NOT NULL,
PRIMARY KEY (id_flight)
);

--Create Table Booking
CREATE TABLE Booking (
id_booking INT AUTO_INCREMENT,
client_name VARCHAR(50) NOT NULL,
quantity INT(2) NOT NULL,
id_flight VARCHAR(20) NOT NULL,
PRIMARY KEY (id_booking),
FOREIGN KEY (id_flight) REFERENCES Flight(id_flight)
);

