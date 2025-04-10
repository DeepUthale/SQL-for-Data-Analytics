# Operator Precedence

SELECT (5-1) * (1+2);
# Precedence
# PEMDAS : Parenthesis Exponential Multiplication Division Addidion Subtraction
# Arithmetic Operators
SELECT 6/2 * (1+2);

# Comparison Operators
SELECT * from colleges WHERE college_id >= 2;
SELECT * from colleges WHERE college_country = "USA";

# Logical Operators
SELECT * from colleges WHERE college_code IN ("APR76");
SELECT * from colleges WHERE college_id	> 1 AND college_country = "UAE";

# Comparison Operators
# Operator	   # Description
-- =			 Equal to	
-- >			Greater than
-- <			 Less than
-- >=		Greater than or equal to
-- <=		Less than or equal to
-- <>			Not equal to

SELECT * from colleges;
SELECT * from colleges WHERE college_code = "MAR7T";
SELECT * from colleges WHERE college_id > 2;
SELECT * from colleges WHERE college_id <> 3;
