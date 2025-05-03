# MAX()
# MAX Function Returns the Highest Value in a Column or within a Set of Values.
# Syntax : MAX(expression)
# Here, the expression means the Column or a Set of Values on which it is to be applied for.

SELECT * FROM titanic;

SELECT max(fare) FROM titanic; -- Get Maximum Value of Fare From the Table

# MIN()
# MIN Function Returns the Lowest Value in a Column or within a Set of Values.
# Syntax : MIN(expression)
# Here, the expression means the Column or a Set of Values on which it is to be applied for.

SELECT * FROM titanic;

SELECT min(age) FROM titanic; -- Get Minimum Value of Age From the Table
