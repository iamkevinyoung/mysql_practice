
--chal1

SELECT * FROM users ORDER BY created_at LIMIT 5;

--chal2

SELECT
	DAYNAME(created_at) AS day,
	COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;

--chal3

SELECT username
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

--chal4

SELECT
	username,
	photo_id,
	COUNT(photo_id) AS number_of_likes
FROM likes
JOIN photos
	ON likes.photo_id = photos.id
JOIN users
	ON photos.user_id = users.id 
GROUP BY photo_id
ORDER BY number_of_likes DESC
LIMIT 1;

-- also works

SELECT
	username,
	photo_id,
	COUNT(photo_id) AS number_of_likes
FROM photos
JOIN likes
	ON likes.photo_id = photos.id
JOIN users
	ON photos.user_id = users.id 
GROUP BY photo_id
ORDER BY number_of_likes DESC
LIMIT 1;

-- chal5

SELECT 
	username, 
	COUNT(photos.id) AS number_of_posts
FROM photos
JOIN users
	ON photos.user_id = users.id
GROUP BY username;

SELECT  
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

--chal6

SELECT
	tag_name,
	photo_id
FROM tags
JOIN photo_tags
	ON tags.id = photo_tags.tag_id;

SELECT
	tag_name,
	COUNT(photo_id) AS number_of_photos_with_tag
FROM tags
JOIN photo_tags
	ON tags.id = photo_tags.tag_id
GROUP BY tag_name
ORDER BY number_of_photos_with_tag DESC LIMIT 5;

--also works

SELECT
	tags.tag_name,
	COUNT(*) as total
FROM photo_tags
JOIN tags
	ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

--chal7

SELECT 
	username,
	user_id 
FROM users
JOIN likes
	ON users.id = likes.user_id
GROUP BY likes.user_id;

SELECT 
	username,
	user_id,
	COUNT(*) AS total
FROM users
JOIN likes
	ON users.id = likes.user_id
GROUP BY likes.user_id;

SELECT 
	username,
	user_id,
	COUNT(*) AS total
FROM users
JOIN likes
	ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total = (SELECT COUNT(*) FROM photos);