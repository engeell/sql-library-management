
-- Detyra 1
SELECT * FROM books;

-- Detyra 2
SELECT title, author, price
FROM books;

-- Detyra 3
SELECT *
FROM books
WHERE price > 15;

-- Detyra 4
SELECT *
FROM books
WHERE publication_year > 2020;

-- Detyra 5
SELECT *
FROM books
WHERE stock > 5;

-- Detyra 6
SELECT *
FROM books
WHERE genre = 'Fantasy'
OR genre = 'Science Fiction';

-- Detyra 7
SELECT *
FROM books
WHERE price BETWEEN 10 AND 30;

-- Detyra 8
SELECT *
FROM books
WHERE title LIKE 'T%';

-- Detyra 9
SELECT *
FROM books
WHERE language != 'English';

-- Detyra 10
SELECT *
FROM books
WHERE publication_year > 2015
AND price < 20;

-- Detyra 11
SELECT DISTINCT genre
FROM books;

-- Detyra 12
SELECT DISTINCT language
FROM books;

-- Detyra 13
SELECT *
FROM books
ORDER BY price DESC;

-- Detyra 14
SELECT *
FROM books
WHERE rating IS NOT NULL
ORDER BY rating DESC
LIMIT 5;

-- Detyra 15
SELECT *
FROM books
WHERE rating IS NULL;

-- Detyra 16
SELECT *
FROM books
WHERE rating IS NOT NULL
AND stock > 0;

-- Detyra 17
SELECT *
FROM books
WHERE genre != 'Horror';

-- Detyra 18
SELECT title AS 'BookTitle',
       author AS 'BookAuthor'
FROM books;

-- Detyra 19
SELECT COUNT(*) AS total_books
FROM books;

-- Detyra 20
SELECT AVG(price) AS average_price
FROM books;

-- Detyra 21
SELECT MAX(price) AS highest_price,
       MIN(price) AS lowest_price
FROM books;

-- Detyra 22
SELECT SUM(stock) AS total_stock
FROM books;

-- Detyra 23
SELECT genre, COUNT(*) AS number_of_books
FROM books
GROUP BY genre;

-- Detyra 24
SELECT genre, AVG(price) AS average_price
FROM books
GROUP BY genre;

-- Detyra 25
SELECT genre, AVG(price) AS average_price
FROM books
GROUP BY genre
ORDER BY average_price DESC;

-- Detyra 26
UPDATE books
SET price = 20.00
WHERE id = 1;

-- Detyra 27
UPDATE books
SET stock = stock + 5
WHERE id = 2;

-- Detyra 28
UPDATE books
SET price = price * 0.90
WHERE genre = 'Fantasy';

-- Detyra 29
UPDATE books
SET rating = 4.5
WHERE id = 14
AND rating IS NULL;

-- Detyra 30
DELETE FROM books
WHERE id = 20;

-- Detyra 31
DELETE FROM books
WHERE publication_year < 1990
AND stock = 0;
