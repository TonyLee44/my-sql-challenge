SHOW DATABASES;

USE my_sql_challenge;

-- VERY EASY CHALLENGE BELOW --

-- CREATE TABLE cars(
-- 	make VARCHAR(100) NOT NULL,
--     model VARCHAR(100) NOT NULL UNIQUE,
--     year INT NOT NULL
-- );

-- INSERT INTO cars (make, model, year)
-- VALUES 
-- ("Toyota", "Supra", 1994),
-- ("Nissan", "Skyline", 1999),
-- ("Honda", "Civic", 2018);

-- INSERT INTO cars (make, model, year)
-- VALUES 
-- 	("Toyota", "Camry", 2016),
--     ("Mitsubishi", "Evo X", 2014);

-- SELECT * FROM cars;



-- EASY CHALLENGE BELOW --



-- CREATE TABLE books(
-- 	title VARCHAR(100) NOT NULL,
--     publish_date INT(4) NOT NULL UNIQUE,
--     author_first_name VARCHAR(100) NOT NULL,
--     author_last_name VARCHAR(100) NOT NULL
-- );

-- INSERT INTO books (title, publish_date, author_first_name, author_last_name)
-- VALUES 
-- 	("The Count of Monte Cristo", 1844, "Alexandre", "Dumas"),
--     ("To Kill a Mockingbird", 1960, "Harper", "Lee"),
--     ("Things Fall Apart", 1958, "Chinua", "Achebe"),
--     ("Think and Grow Rich", 1937, "Napoleon", "Hill"),
--     ("Emotional Intelligence: Why It Can Matter More Than IQ", 1995, "Daniel", "Goleman");

-- INSERT INTO books (title, publish_date, author_first_name, author_last_name)
-- VALUES 
-- ("Harry Potter and the Sorcerer's Stone", 1997, "J.K.", "Rowling"),
-- ("Harry Potter and the Chamber of Secrets", 1998, "J.K.", "Rowling");


-- DELETE FROM books 
-- ORDER BY publish_date
-- LIMIT 1;

-- SELECT * FROM books;





-- MEDIUM CHALLENGE BELOW --

-- CREATE TABLE movies(
-- 	title VARCHAR(100) NOT NULL,
--     release_date INT(4) NOT NULL,
--     rating INT(1) NOT NULL
-- );

-- INSERT INTO movies (title, release_date, rating)
-- VALUES 
-- ("Avengers: Endgame", 2019, 5),
-- ("Avengers: Infinity War", 2018, 4),
-- ("Godzilla vs. Kong", 2021, 3),
-- ("Mortal Kombat", 2021, 3),
-- ("The Batman", 2022, 5),
-- ("Man of Steel", 2013, 5),
-- ("Batman v Superman", 2016, 5),
-- ("Spider-Man: No Way Home", 2021, 5),
-- ("Justice League", 2017, 4),
-- ("Iron Man 3", 2013, 5);

-- SELECT * FROM movies;

-- SELECT *
-- FROM movies
-- WHERE title LIKE '%s%' ORDER BY release_date ASC;





-- HARD CHALLENGE BELOW --


-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE movies
-- SET 
-- 	director_firstName = "Anthony", 
-- 	director_lastName = "Russo"
-- WHERE title = "Avengers: Endgame";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Anthony", 
-- 	director_lastName = "Russo"
-- WHERE title = "Avengers: Infinity War";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Adam", 
-- 	director_lastName = "Wingard"
-- WHERE title = "Godzilla vs. Kong";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Simon", 
-- 	director_lastName = "McQuoid"
-- WHERE title = "Mortal Kombat";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Matt", 
-- 	director_lastName = "Reeves"
-- WHERE title = "The Batman";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Zack", 
-- 	director_lastName = "Snyder"
-- WHERE title = "Man of Steel";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Zack", 
-- 	director_lastName = "Snyder"
-- WHERE title = "Batman v Superman";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Jon", 
-- 	director_lastName = "Watts"
-- WHERE title = "Spider-Man: No Way Home";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Zack", 
-- 	director_lastName = "Snyder"
-- WHERE title = "Justice League";
-- UPDATE movies
-- SET 
-- 	director_firstName = "Shane", 
-- 	director_lastName = "Black"
-- WHERE title = "Iron Man 3";
-- SET SQL_SAFE_UPDATES = 1;



-- Names Together --

-- SELECT CONCAT(director_lastName, ', ', director_firstName)
-- AS director_full_name
-- FROM movies
-- WHERE CONCAT(director_lastName, ', ', director_firstName) IS NOT NULL 
-- ORDER BY director_full_name ASC;


-- Remove all data by director's last name that ends in R-Z

-- SELECT *
-- FROM movies
-- WHERE director_lastName >= 'A' AND director_lastName < 'R'
-- LIMIT 3;





-- VERY HARD CHALLENGE BELOW --

-- INSERT INTO cars (make, model, year)
-- VALUES 
-- ("Acura", "NSX", 1995),
-- ("Nissan", "350z", 2003),
-- ("Honda", "CR-V", 2020);

-- ALTER TABLE cars
-- ADD COLUMN prices INT AFTER year,
-- ADD COLUMN colors VARCHAR(20) AFTER prices;

-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE cars
-- SET 
-- 	prices = 20000, 
-- 	colors = "blue"
-- WHERE model = "350z";
-- UPDATE cars
-- SET 
-- 	prices = 10000, 
-- 	colors = "red"
-- WHERE model = "Camry";
-- UPDATE cars
-- SET 
-- 	prices = 25000, 
-- 	colors = "silver"
-- WHERE model = "Civic";
-- UPDATE cars
-- SET 
-- 	prices = 22500, 
-- 	colors = "white"
-- WHERE model = "CR-V";
-- UPDATE cars
-- SET 
-- 	prices = 40000, 
-- 	colors = "black"
-- WHERE model = "Evo X";
-- UPDATE cars
-- SET 
-- 	prices = 50000, 
-- 	colors = "grey"
-- WHERE model = "NSX";
-- UPDATE cars
-- SET 
-- 	prices = 65000, 
-- 	colors = "green"
-- WHERE model = "Skyline";
-- UPDATE cars
-- SET 
-- 	prices = 62500, 
-- 	colors = "black"
-- WHERE model = "Supra";
-- SET SQL_SAFE_UPDATES = 1;


-- Query that adds make and model together below --

-- SELECT CONCAT(make, ' ', model)
-- AS make_model
-- FROM cars
-- WHERE CONCAT(make, ' ', model) IS NOT NULL 
-- ORDER BY make ASC;


-- Query that counts mutiple make of each cars below --

-- SELECT make, COUNT(*)
-- FROM cars
-- GROUP BY make
-- HAVING COUNT(*) > 1;