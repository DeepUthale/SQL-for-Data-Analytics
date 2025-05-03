# Aspect				        TRUNCATE				      DELETE					      DROP
#
# Description		    Removes all Data		Removes specific		  Removes an Entire
#					          from a Table.			  Rows from a Table.	  Table.
#
# Rollback			    Cannot be Rolled	  Can be Rolled Back.		Cannot be Rolled
#					          Back.											                back.
#
# Where Clause	    Not Applicable.		  Optional.				      Not applicable.
#
# Table Structure	  Preserve Table			Preserve Table			  Removes Table
#					          Structure.				  Structure.				    Structure.

SELECT * FROM employees;

# Delete the Row from the Table
DELETE FROM employees WHERE job_id = 9;
ROLLBACK;

# Delete All Records from the Table
TRUNCATE TABLE employees;
ROLLBACK;

# Delete the Table
DROP TABLE employees;

# Delete the Database
DROP DATABASE employees;
