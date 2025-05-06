SELECT * FROM Customers;

# 1. Determine the total number of male and female customers
SELECT gender, COUNT(*) AS total
FROM Customers
GROUP BY gender;

# 2. Find the maximum and minimum age of customers
SELECT MIN(age) AS Min, MAX(age) AS Max
FROM Customers;

# 3. Identify the region with the highest number of customers
SELECT region, COUNT(*) AS Cust_Count
FROM Customers
GROUP BY region
ORDER BY cust_Count DESC
LIMIT 1;

# 4. Find the oldest and youngest customers in terms of age
SELECT MAX(age) as mx_age, MIN(age) as mn_age
FROM Customers;

SELECT *
FROM Customers
WHERE age = (SELECT MAX(age) FROM Customers)
   OR age = (SELECT MIN(age) FROM Customers);

# 5. Calculate the total balance of male and female customers separately
SELECT gender, SUM(balance) AS total_balance
FROM Customers
GROUP BY gender;

# 6. Find the job titles with the highest and lowest average balance
-- Job with the highest average balance
SELECT job, AVG(balance) AS avg_balance
FROM Customers
GROUP BY job
ORDER BY avg_balance DESC
LIMIT 1;

-- Job with the lowest average balance
SELECT job, AVG(balance) AS avg_balance
FROM Customers
GROUP BY job
ORDER BY avg_balance ASC
LIMIT 1;

# 7. Find the most common job among customers
SELECT job, COUNT(*) AS job_count
FROM Customers
GROUP BY job
ORDER BY job_count DESC
LIMIT 1;

# 8. Calculate the average balance of customers in each region
SELECT region, AVG(balance) AS average_balance
FROM Customers
GROUP BY region;

# 9. Identify the top 3 regions with the highest total balance
SELECT region, SUM(balance) AS total_balance
FROM Customers
GROUP BY region
ORDER BY total_balance DESC
LIMIT 3;
