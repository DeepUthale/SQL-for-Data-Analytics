# AVG()
# AVG() Function is used to Extract the Average of all Non-NULL Values in a Field.

SELECT * FROM titanic;

SELECT avg(age) FROM titanic; -- Take Average of Values of Age from the Table

SELECT avg(DISTINCT age) FROM titanic; -- Take Average of Distinct Values of Age in the Table
