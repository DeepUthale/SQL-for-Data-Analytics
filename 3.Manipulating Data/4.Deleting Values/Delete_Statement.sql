# DELETE is used to Remove Existing Records in a Table.
# To remove specific records, WHERE Keyword is used along with it.

SELECT * FROM employees;

DELETE FROM employees WHERE job_id = 9; -- Delete Records from the Table.
ROLLBACK; -- Rollback the Changes.

SELECT * FROM employees;

DELETE FROM employees; -- Delete All the Records from the Table.
ROLLBACK;	-- Rollback the Changes.
