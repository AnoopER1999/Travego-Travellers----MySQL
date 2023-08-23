use travego;

/*a. How many female passengers traveled a minimum distance of 600 KMs?*/

SELECT 
    COUNT(DISTINCT passenger_id) AS 'No of Passengers'
FROM
    passenger
WHERE
    Gender LIKE 'F' AND Distance <= 600;

/*b. Write a query to display the passenger details whose travel distance is greater than 500 and
who are traveling in a sleeper bus.*/

SELECT 
    *
FROM
    passenger
WHERE
    Distance > 500
        AND Bus_type LIKE 'Sleeper';

/*c. Select passenger names whose names start with the character 'S'.*/

SELECT 
    passenger_name
FROM
    passenger
WHERE
    passenger_name LIKE 'S%';

/*d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City,
Destination City, Bus type, and Price in the output. */

SELECT 
    a.passenger_name,
    a.Boarding_city,
    a.Destination_city,
    a.Bus_type,
    b.Price
FROM
    passenger a
        JOIN
    price b ON a.Distance = b.Distance
        AND a.Bus_type = b.Bus_type;

/*e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in
a bus?*/

SELECT 
    a.passenger_name, b.Price
FROM
    passenger a
        JOIN
    price b ON a.Distance = b.Distance
        AND a.Bus_type = b.Bus_type
WHERE
    a.Distance = 1000
        AND a.Bus_type LIKE 'Sitting';

/* f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji? */

SELECT 
    a.passenger_name,
    a.Boarding_city,
    a.Destination_city,
    b.Bus_type,
    b.Price
FROM
    passenger a
        JOIN
    price b ON a.Distance = b.Distance
WHERE
    a.Passenger_name LIKE 'Pallavi';

/* g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper  */

UPDATE passenger 
SET 
    Category = 'Non AC'
WHERE
    Bus_type = 'Sleeper';

SELECT 
    *
FROM
    passenger;

/* h. Delete an entry from the table where the passenger name is Piyush and commit this change in
the database. */

DELETE FROM passenger 
WHERE
    Passenger_name = 'Piyush';

SELECT 
    *
FROM
    passenger;

/* i. Truncate the table passenger and comment on the number of rows in the table (explain if
required). */

truncate table passenger;

SELECT 
    *
FROM
    passenger;

-- The truncate command deleted all rows of the column retaining only the schema of the table.

/* j. Delete the table passenger from the database. */

drop table passenger;

show tables;
