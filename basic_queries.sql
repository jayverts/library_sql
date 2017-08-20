-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;

-- Get all authors born in the 20th centruy or later
SELECT name FROM authors WHERE birth_year >2000;

-- Get all authors born in the USA
SELECT name FROM authors WHERE nationality = 'United States of America';

-- Get all books published on 1985
SELECT name FROM books WHERE publication_date = 1985;

-- Get all books published before 1989
SELECT name FROM books WHERE publication_date < 1989;

-- Get just the title of all books.
SELECT name FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT name FROM books WHERE title LIKE '%the%';

-- Add yourself as an author
INSERT INTO authors VALUES (10,'Jeremy Verdolino', 'USA', 1986);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books VALUES (70, 'My Book', 2017, 10), (71, 'My Bookier Book', 2018, 10);

-- Update one of your books to have a new title
UPDATE books SET title = 'My Bookiest Book' WHERE id = 71;

-- Delete your books
DELETE FROM books WHERE id = 70;
DELETE FROM books WHERE id = 71;

-- Delete your author entry
DELETE FROM authors WHERE id = 10;
