SELECT * FROM customers;

# 1. Update the job of the customer with customerid 200000008 to 'Data Scientist'
UPDATE Customers
SET job = 'Data Scientist'
WHERE `Customer ID` = 200000008;

# 2. Increase the account balance of all customers by 10%
UPDATE Customers
SET balance = balance + (0.1 * balance);

# 3. Set the balance of customers aged below 30 to 0
UPDATE Customers
SET balance = 0
WHERE age < 30;

# 4. Update the region of the customer named 'Thomas Lawrence' to 'Wales'
UPDATE Customers
SET region = 'Wales'
WHERE `Name` = 'Thomas' AND Surname = 'Lawrence';

# 5. Set the job of all male customers to 'Engineer'
UPDATE Customers
SET job = 'Engineer'
WHERE Gender = 'Male';

# 6. Rollback the last update operation
ROLLBACK;

# 7. Commit the changes made so far
COMMIT;

# 8. Update the balance of customers whose names start with 'J' to double their
# current balance
UPDATE Customers
SET balance = 2* balance
WHERE `Name` LIKE 'J%';

# 9. Update the job of the customer with the highest balance to 'Manager'
UPDATE Customers
SET Job = 'Manager'
WHERE Balance = (
    SELECT max_balance
    FROM (
        SELECT MAX(Balance) AS max_balance
        FROM Customers
    ) AS temp
);

# 10.Set the balance of customers in the 'England' region to 50000
UPDATE Customers
SET Balance = 50000
WHERE Region = 'England';
