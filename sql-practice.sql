-- TASK 1: Insert a new user
INSERT INTO users (username, firstName, lastName, age)
VALUES ('ujackson', 'Uma', 'Jackson', 34);

-- TASK 2: Update an existing user's age (update Bob Doe to age 35)
UPDATE users
SET age = 35
WHERE username = 'bdoe';

-- TASK 3: Delete a user by username (remove user 'fkim')
DELETE FROM users
WHERE username = 'fkim';

-- TASK 4: Select all users over the age of 30
SELECT * FROM users
WHERE age > 30;

-- TASK 5: Select all users with last name 'Jones', sorted by age descending
SELECT * FROM users
WHERE lastName = 'Jones'
ORDER BY age DESC;

-- TASK 6: Select the 5 youngest users
SELECT * FROM users
ORDER BY age ASC
LIMIT 5;

-- TASK 7: Select users whose first name starts with 'M'
SELECT * FROM users
WHERE firstName LIKE 'M%';

-- TASK 8: Count how many users are under 21
SELECT COUNT(*) AS under_21_count
FROM users
WHERE age < 21;
