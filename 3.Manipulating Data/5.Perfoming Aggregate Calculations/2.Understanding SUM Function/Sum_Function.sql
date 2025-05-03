# SUM()
# SUM Function is Only used for Numerical Data.
# It Returns the Sum Or Total of a Set of Values or, All the Values in a Column it is Applied for-
# -Ignoring NULL Values.

SELECT * FROM titanic;

# Sum of All Fares in Table
SELECT sum(fare) 
FROM titanic; 

# Sum of All Distinct Values of Age from Table 
SELECT sum(DISTINCT age)
FROM titanic;
