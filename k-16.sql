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
