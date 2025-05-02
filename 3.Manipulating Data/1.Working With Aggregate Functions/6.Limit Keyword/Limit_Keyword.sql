# LIMIT Keyword is used to Specify the Number of Records to Return.

SELECT * FROM titanic;

-- Limit to Display only First-Two Values in Columns. 
SELECT first_name, fare
FROM titanic
ORDER BY fare DESC
LIMIT 2;

-- Limit to Display only First-Two Values in Columns. 
SELECT DECK_NUMBER, avg(age) as avg_age
FROM titanic
WHERE fare>30000
GROUP BY DECK_NUMBER
HAVING avg_age>30
ORDER BY avg_age DESC
LIMIT 2;
