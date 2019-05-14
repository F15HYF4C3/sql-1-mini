-- Must use single quotes, use https://postgres.devmountain.com/, https://www.sqlteaching.com/#!like

-- SELECT all the data FROM the artist table.
SELECT * FROM artist;

-- SELECT the first_name, last_name, and country FROM the employee table.
SELECT first_name, last_name, country FROM employee;

-- SELECT the name, composer, and milliseconds FROM the track table WHERE the milliseconds are greater than 299000.
SELECT name, composer, milliseconds FROM track WHERE milliseconds > 299000;

-- SELECT the count FROM the track table WHERE the milliseconds are greater than 299000.
SELECT count(*) FROM track WHERE milliseconds > 299000;

-- Black Diamond

-- Find the average length of all tracks in milliseconds
SELECT AVG(milliseconds) FROM track;

-- Find the number of invoices in the USA
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- Make a list of all the First Names of Customers that contain an 'a'
SELECT first_name FROM customer WHERE first_name LIKE '%a%';
-- In SQL, you can use the LIKE command in order to search through text-based values. With LIKE, there are two special characters: % and _. 
-- The percent sign (%) represents zero, one, or multiple characters. 
-- The underscore (_) represents one character. 
-- For example, LIKE "SUPER _" would match values such as "SUPER 1", "SUPER A", and "SUPER Z". 
-- LIKE "SUPER%" would match any value where SUPER is at the beginning, such as "SUPER CAT", "SUPER 123", or even "SUPER" by itself. 
-- SELECT * FROM robots WHERE name LIKE "%Robot%"; would yield all values that contain "Robot" in the name. Can you run a query that returns "Robot" followed by a year between 2000 and 2099? (So 2015 is a valid value at the end, but 2123 is not.) 
-- Note: LIKE queries are not case sensitive.

-- Make a list of the 10 longest tracks
SELECT name, milliseconds FROM track ORDER BY milliseconds DESC LIMIT 10;

-- Make a list of the 20 shortest tracks
SELECT name, milliseconds FROM track ORDER BY milliseconds LIMIT 20;

-- Find all the customers that live in California or Washington
SELECT state FROM customer WHERE state = 'CA' OR state = 'WA';

-- Find all the customers that live in California, Washington, Utah, Florida, or Arizona (Use IN keyword)
SELECT * FROM customer WHERE state IN ('CA', 'WA', 'UT', 'FL', 'AZ');

-- Insert an artist to the database
INSERT INTO artist VALUES(279, 'PhilCollins');

-- Insert yourself as a customer to the database
INSERT INTO customer VALUES(61, 'Tyra', 'M', 'XBP', '123 s', 'PG', 'UT', 'USA', '84062', '8018018010', ' ', 'tnm@gmail.com', 4);

-- Find a list of all Playlists that start with Classical
SELECT * FROM playlist WHERE name LIKE 'Classical%';

-- You can either continue exploring this dataset or look into setting up postgres on your local machine.
