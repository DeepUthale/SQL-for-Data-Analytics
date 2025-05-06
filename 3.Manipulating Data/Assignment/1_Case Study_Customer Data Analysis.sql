SELECT * FROM customers;

# 1. List all customers sorted by their age in ascending order
SELECT * FROM customers 
ORDER BY age;

# 2. Display the top 10 customers with the highest balances
SELECT * FROM customers
ORDER BY balance DESC
LIMIT 10;

# 3. List the average balance of customers in each region, only for regions where
# the average balance is above 60000
SELECT region ,avg(balance) as avg_balance 
FROM customers
GROUP BY region
HAVING avg_balance > 60000;

# 4. Display the top 3 jobs with the "highest total balance"
SELECT job, sum(balance) as total_balance
FROM customers
GROUP BY job
ORDER BY total_balance DESC
LIMIT 3;

# 5. Display the top 5 regions with the "highest total balance"
SELECT region, sum(balance) as total_balance
FROM customers
GROUP BY region
ORDER BY total_balance DESC
LIMIT 5;

# 6. Find the total balance held by customers aged between 25 and 35 (inclusive)
SELECT sum(balance) as total_balance
FROM customers
WHERE age<=35 AND age>=25;

# 7. List all male customers whose balance is greater than 50000
SELECT *
FROM customers
WHERE balance > 50000 AND gender = 'male';
