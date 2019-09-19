-- 160101
INSERT INTO types (name)
VALUES ('Entire Villa')

-- 160102
INSERT INTO users (name, email)
VALUES ('John Smith', 'john@email.com')

-- 160103
INSERT INTO places (title, price, rating, city, type, host)
VALUES ('Amazing Villa by the Ocean', 150, 5, 'Phuket', 1, 2)

-- 160104
INSERT INTO likes (user, place)
VALUES (1, 1)

-- 160201
SELECT * FROM places

-- 160202
SELECT title, price FROM places

 -- 160203
SELECT * FROM places
WHERE price > 100

-- 160204
SELECT * FROM places
WHERE city = 'Samui'

-- 160205
SELECT * FROM places
WHERE price BETWEEN 80 AND 150

-- 160206
SELECT title, price FROM places
ORDER BY price

-- 160207
SELECT * FROM places
WHERE title LIKE 'Amazing%'

-- 160208
SELECT id, title AS NAME, price AS AMOUNT, rating FROM places
WHERE rating != 4

-- 160209
SELECT * FROM users
WHERE email LIKE '%gmail%'

-- 160301
SELECT * FROM places
LEFT JOIN types
ON places.type = types.id

-- 160302
SELECT places.id, title, price, types.name FROM places
LEFT JOIN types
ON places.type = types.id

-- 160303
SELECT places.id, title, price, types.name, users.name, users.email FROM places
LEFT JOIN users
ON places.host = users.id
LEFT JOIN types
ON places.type = types.id
WHERE price > 40
ORDER BY TYPE

-- 160304
SELECT name, email, places.title, places.rating FROM users
LEFT JOIN places
ON users.id = places.host

-- 160305
SELECT name, email, places.title, places.rating FROM users
INNER JOIN places
ON users.id = places.host

-- 160306
SELECT title, users.name AS fan FROM places
LEFT JOIN likes
ON likes.place = places.id
LEFT JOIN users
ON likes.user = users.id
ORDER BY title

-- 160307
SELECT title, users.name AS fan FROM places
INNER JOIN likes
ON likes.place = places.id
LEFT JOIN users
ON likes.user = users.id
ORDER BY fan

-- 160308
SELECT users.name AS fan, title AS place, types.name FROM places
INNER JOIN likes
ON likes.place = places.id
LEFT JOIN users
ON likes.user = users.id
INNER JOIN types
ON places.type = types.id
ORDER BY fan
