--challenge 1
SELECT title, rating FROM series
JOIN reviews
    ON series.id = reviews.series_id;
    
--challenge 2
SELECT title, AVG(rating) AS average_rating FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY title
ORDER BY average_rating;

--chal 3
SELECT first_name, last_name, rating FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewer_id;
    
--chal4
SELECT title AS unreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;

-- chal5

SELECT genre, ROUND(AVG(rating),2) AS avg_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre;

--chal6

SELECT 
    first_name, 
    last_name,
    COUNT(rating) AS COUNT, 
    IFNULL(MIN(rating), 0) AS MIN, 
    IFNULL(MAX(rating), 0) AS MAX, 
    IFNULL(ROUND(AVG(rating), 2), 0) AS AVG,
    IF(COUNT(rating) = 0, 'INACTIVE', 'ACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews
    ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

--chal7 (2 options that both work)
    
    SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewer_id
JOIN series
    ON series.id = reviews.series_id;
    
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviews
JOIN reviewers
    ON reviews.reviewer_id = reviewers.id
JOIN series
    ON reviews.series_id = series.id;