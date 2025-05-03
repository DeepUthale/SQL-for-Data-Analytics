# COUNT() Function
# COUNT Function is Applicable to Numeric Data.
# The Parentheses and the Argument must be attached to the Name of the Aggregate Function.
# We shouldn't leave any White Space before opening the Parentheses.

SELECT * FROM titanic;

# COUNT(*) Function
# COUNT(*) Function Returns the Number of All Rows in a Table, Including Null Values.

SELECT count(*) FROM titanic; -- Counting both NULL and Non NULL Values

SELECT count(alive) FROM titanic; -- Dosen't Count Missing or NULL Values

# COUNT (DISTINCT) Function
# COUNT Distinct Function helps us to find the number of times Unique Values-
# - Are encountered in a Column.

SELECT * FROM titanic;

SELECT count(DISTINCT deck) FROM titanic;
