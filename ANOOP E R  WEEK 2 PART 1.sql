CREATE DATABASE Travego;
USE Travego;

CREATE TABLE Price (
    ID INT1,
    Bus_type ENUM('Sleeper', 'Sitting'),
    Distance INT NOT NULL,
    Price INT NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Passenger (
    Passenger_id INT1,
    Passenger_name VARCHAR(30) NOT NULL,
    Category ENUM('AC', 'Non AC'),
    Gender ENUM('M', 'F'),
    Boarding_city VARCHAR(15) NOT NULL,
    Destination_city VARCHAR(15) NOT NULL,
    Distance INT NOT NULL,
    Bus_type ENUM('Sleeper', 'Sitting'),
    PRIMARY KEY (Passenger_id)
);


INSERT INTO Price VALUES(1,1,350,770),
(2,1,500,1100),
(3,1,600,1320),
(4,1,700,1540),
(5,1,1000,2200),
(6,1,1200,2640),
(7,1,1500,2700),
(8,2,500,620),
(9,2,600,744),
(10,2,700,868),
(11,2,1000,1240),
(12,2,1200,1488),
(13,2,1500,1860);


INSERT INTO Passenger VALUES(1,"Sejal",1,2,"Bengaluru","Chennai",350,1),
(2,"Anmol",2,1,"Mumbai","Hyderabad",700,2),
(3,"Pallavi",1,2,"Panaji","Bengaluru",600,1),
(4,"Khusboo",1,2,"Chennai","Mumbai",1500,1),
(5,"Udit",2,1,"Trivandrum","Panaji",1000,1),
(6,"Ankur",1,1,"Nagpur","Hyderabad",500,2),
(7,"Hemant",2,1,"Panaji","Mumbai",700,1),
(8,"Manish",2,1,"Hyderabad","Bengaluru",500,2),
(9,"Piyush",1,1,"Pune","Nagpur",700,2);

