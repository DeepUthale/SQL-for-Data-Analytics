# ROUND()
# The ROUND Function Rounds a Number to a Specified Number of Decimal Places.

# Syntax: ROUND(number, decimals)
# Here, Number is the Decimal Number we want to Round, Decimals is the Number of-
# - Decimal Places we want to Round for.

SELECT * FROM titanic;

SELECT round(avg(age)) FROM titanic; -- Take Average of Values of Age from the Table and Round that Value

SELECT round(avg(DISTINCT age)) FROM titanic; -- Take Average of Distinct Values of Age in the Table Round that Value
