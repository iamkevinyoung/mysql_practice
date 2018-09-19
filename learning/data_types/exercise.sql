-- char is good for words with fixed values e.g. gender m/f, states NY, CA

CREATE TABLE inventory (
    item_name VARCHAR(20),
    price DECIMAL(6, 2),
    quantitiy INT
    );
    
-- DATETIME has more dates but larger byte size, TIMESTAMP have dates only from 1970-2030 but smaller byte size.

SELECT NOW();
SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(NOW());

SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(CURDATE(), %m/%d/%Y)

SELECT DATE_FORMAT(NOW(), %M %D at %k:%i);

CREATE TABLE tweets (
    tweet VARCHAR(40),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW());