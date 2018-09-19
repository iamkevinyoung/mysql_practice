-- SELECT CONCAT(
--     SUBSTRING(title, 1, 10),
--     '...'
--     )
--     AS 'Short Title'
-- FROM books;

-- SELECT
--     SUBSTRING(REPLACE(title, 'e', '3'), 1,10)
-- FROM books;

-- SELECT
--     CONCAT(author_fname,REVERSE(author_fname))
-- FROM books;

-- > SELECT 
--     CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) 
--     AS 'full name in caps' 
--     FROM books;   

-- SELECT
--     CONCAT(title, ' was released in ', released_year)
--     AS 'blurb'
--     FROM books;

-- SELECT
--     title,
--     CHAR_LENGTH(title) AS 'character count'
--     FROM books;

SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;
