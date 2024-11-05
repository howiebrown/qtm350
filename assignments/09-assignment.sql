-- QTM 350: Data Science Computing
-- Assignment 09: SQL Practice
-- Name:
-- Instructions:
-- You may use pgAdmin or any SQL editor of your choice to complete this assignment.
-- Ensure all answers are within a single SQL file, and submit this file on Canvas.
-- Please begin by creating the dataset provided below.

-- Dataset: drivers Table
DROP TABLE IF EXISTS drivers;

CREATE TABLE drivers(
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(30),
    nationality VARCHAR(15),
    team VARCHAR(30),
    victories INT,
    podiums INT,
    poles INT,
    points FLOAT
);

INSERT INTO drivers VALUES 
(1, 'Lewis Hamilton', 'British', 'Mercedes', 103, 182, 103, 4160.5),
(2, 'Michael Schumacher', 'German', 'Ferrari', 91, 155, 68, 1566.0),
(3, 'Ayrton Senna', 'Brazilian', 'McLaren', 41, 80, 65, 614.0),
(4, 'Sebastian Vettel', 'German', 'Red Bull', 53, 122, 57, 3097.0),
(5, 'Niki Lauda', 'Austrian', 'Ferrari', 25, 54, 24, 420.5),
(6, 'Fernando Alonso', 'Spanish', 'Renault', 32, 101, 22, 2061.0),
(7, 'Alain Prost', 'French', 'McLaren', 51, 106, 33, 798.5),
(8, 'Charles Leclerc', 'Monegasque', 'Ferrari', 5, 21, 18, 699.0),
(9, 'Max Verstappen', 'Dutch', 'Red Bull', 52, 92, 28, 2411.0),
(10, 'Jenson Button', 'British', 'Brawn GP', 15, 50, 8, 1235.0),
(11, 'Kimi Raikkonen', 'Finnish', 'Ferrari', 21, 103, 18, 1873.0),
(12, 'Daniel Ricciardo', 'Australian', 'Red Bull', 8, 32, 3, 1274.0),
(13, 'Valtteri Bottas', 'Finnish', 'Mercedes', 10, 67, 20, 1731.0),
(14, 'Rubens Barrichello', 'Brazilian', 'Ferrari', 11, 68, 13, 658.0);

SELECT * FROM drivers;

-- 1. List drivers by team and victories in descending order.

-- 2. List drivers who have won more races than the average number of victories across all drivers.

-- 3. Find all drivers with more than 50 podiums or in Ferrari team.

-- 4. Count drivers by nationality with podiums above 40.

-- 5. Calculate average points for each team, rounded to two decimals.
-- Hint: You will have to use ROUND() and CAST() to convert the variable to numeric.

-- 6. List drivers in top 20% by points.
-- Hint: You will need to use the PERCENTILE_CONT() function.

-- 7. Calculate total victories, podiums, and average points for German drivers.

-- 8. List all drivers whose names contain both 'a' and 'e'.
-- Hint: Here you will use a new function, LIKE, to filter the driver_name column.
-- WHERE driver_name LIKE .... AND driver_name LIKE ....; (use % as wildcard with LIKE)

-- 9. Retrieve the driver with the highest victories in each team.
-- Hint: Here you will have to use the alias "drivers d" to allow referencing the "drivers"
-- table in the subquery when filtering by team in the WHERE clause ("WHERE team = d.team").

-- 10. List drivers with below-average points for their team.
-- Hint: You will need to use an alias for the table here as well.
