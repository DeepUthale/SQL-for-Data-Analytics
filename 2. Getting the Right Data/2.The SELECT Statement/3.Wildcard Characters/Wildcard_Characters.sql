# Wildcard Characters in SQL
	# Symbol                 # Description
    -- %		  Represents zero or more characters
    -- _			Represents a single character
    -- []		Represents any single character within the brackets*
    -- ^			Represents any character not in the brackets*
    -- -		Represents any single character within the specified range*
    -- {}			Represents any escaped character**
														-- *	Not supported in PostgreSQL and MySQL
														-- **	Supported only in Oracle datavases

SELECT * from colleges WHERE college_code LIKE 'J%';

SELECT * from colleges WHERE college_country LIKE '__A%';

SELECT * from colleges WHERE college_country LIKE '%U__';
