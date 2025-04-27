# 1. Retrieve all columns for all passengers from the Titanic table.
SELECT * FROM titanic_data;

# 2. Retrieve distinct values of the "Embarked" column from the Titanic table.
SELECT DISTINCT embarked FROM titanic_data;

# 3. Retrieve the names and ages of passengers who survived from the Titanic table.
SELECT first_name, last_name, age FROM titanic_data WHERE alive = "yes";

# 4. Retrieve the names and ticket numbers of passengers who paid fares greater than 60000.
SELECT first_name, last_name, DECK_NUMBER FROM titanic_data WHERE fare > 60000;

# 5. Retrieve the names and ages of passengers whose names start with 'J'.
SELECT first_name, last_name, age FROM titanic_data WHERE first_name LIKE 'J%';

# 6. Retrieve the names and ages of passengers who boarded deck numbers either 90 or 70.
SELECT first_name, last_name, age, DECK_NUMBER FROM titanic_data WHERE DECK_NUMBER = 70 || DECK_NUMBER = 90;

# 7. Retrieve the names and ages of passengers with ages between 20 and 30.
SELECT first_name, last_name, age FROM titanic_data WHERE age >= 20 && age <= 30;

# 8. Retrieve the names and ages of passengers whose ages belongs to 20, 25, or 30.
SELECT first_name, last_name , age FROM titanic_data WHERE age = 20 || age = 25 or age = 30;
