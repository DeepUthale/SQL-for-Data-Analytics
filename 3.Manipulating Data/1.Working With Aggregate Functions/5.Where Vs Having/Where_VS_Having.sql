#           WHERE			#	    HAVING
-- Can be used with or without		-- Can only be used with GROUP 
-- using GROUP BY.			-- BY.

-- It is used in row operations.	-- It is used in multiple row
					-- operations.

-- It cannot use aggregate		- It can use aggregate functions.
-- functions.

-- It can be used with all DML		-- It can only be used with 
-- commands.				-- SELECT statement.

SELECT * FROM titanic;

SELECT DECK_NUMBER, avg(age) as avg_age
FROM titanic
WHERE fare > 30000
GROUP BY DECK_NUMBER
HAVING avg_age > 30
ORDER BY DECK_NUMBER DESC;

SELECT pclass, avg(fare) as avg_fare
FROM titanic
WHERE age > 20
GROUP BY pclass
HAVING avg_fare > 30000
ORDER BY pclass;
