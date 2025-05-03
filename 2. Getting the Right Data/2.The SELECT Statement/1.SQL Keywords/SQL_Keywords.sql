# The SELECT statement is used to select data from a database.
SELECT * from colleges;
SELECT college_code, college_country from colleges; 

# The WHERE clause is used to filter records.
# It is used to extract only those records that fulfill a specified condition.
SELECT * from colleges WHERE college_id > 1;
SELECT * from colleges WHERE college_country = "USA";

# AND Keyword : This operator displays only those records where both conditions cond1 and cond2 evaluates TRUE.
SELECT * from colleges;
SELECT * from colleges WHERE college_id>1 AND college_country = "USA";

# OR Keyword : The OR command is used with WHERE to include rows where either condition is true.
SELECT * from colleges;
SELECT * from colleges WHERE college_id>2 OR college_country = "IND";

# IN Keyword : Allows you to specify multiple values in a WHERE clause.
SELECT * from colleges WHERE college_id IN (1,3);

# NOT IN Keyword : Used to reduce the multiple OR conditions by specifying the multiple values in WHERE clause.
SELECT * from colleges WHERE college_id NOT IN (1,3);

# LIKE Operator is used in WHERE clause to search for specified pattern in column.
# There are two Wildcards often used in conjunction with the LIKE Operator:
	-- The Percent sign % represents zero, one, or multiple characters
    -- The underscore sign _ represents one, single character.
SELECT * from colleges WHERE college_country LIKE "US%";

# NOT LIKE KeyWord : Returns a result set that dosen't match given string pattern.
SELECT * from colleges WHERE college_country NOT LIKE "US%";

# BETWEEN Keyword : 
	-- The BETWEEN Operator selects values within given range. The values can be numbers, text, or dates.
    -- The BETWEEN operator is inclusive (begin and end values are included).
SELECT * from colleges WHERE college_id BETWEEN 3 AND 5;

# IS NULL Keyword : Operator is used to test for empty values (NULL values).
SELECT * from colleges WHERE college_country IS NULL;

# IS NOT NULL Keyword : Operator is used to test for non-empty values (NOT NULL values)
SELECT * from colleges WHERE college_country IS NOT NULL;

# DISTINCT Keyword : The SELECT DISTINCT statement is used to return only distinct (different) values.
SELECT DISTINCT college_country from colleges;
SELECT DISTINCT college_code from colleges;
