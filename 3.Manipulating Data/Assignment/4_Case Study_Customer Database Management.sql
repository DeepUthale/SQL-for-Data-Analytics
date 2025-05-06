SELECT * FROM Customers;

# 1. Write a SQL query to delete all records of customers who are older than 50 years
DELETE FROM Customers 
WHERE age > 50;

# 2. Delete the customer record with customerid 300000812 from the table
DELETE FROM Customers
WHERE `Customer ID` = 300000812;

# 3. Delete records of customers whose job title is 'Other'
DELETE FROM Customers
WHERE job = 'other';

# 4. Remove records of male customers older than 40 years.
DELETE FROM Customers
WHERE age > 40 AND gender = 'Male';

# 5. Remove records of customers who are from the 'Scotland' region and have a balance less than 30000
DELETE FROM Customers
WHERE region = 'Scotland' AND balance < 30000;
