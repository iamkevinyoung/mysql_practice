-- SELECT
-- DISTINCT(
-- CONCAT(author_fname, ' ', author_lname)
-- )
-- AS 'Distinct full names'
-- FROM books;

-- This also works:
SELECT DISTINCT author_fname, author_lname FROM books;