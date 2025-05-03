# UPDATE Keyword is used to Modify Existing Records in a Table.

# If we "DO NOT" use "WHERE" Keyword with "UPDATE" Keyword in SQL Statement,
# Values of All Records will be Updated.

SELECT * FROM employees;

UPDATE employees SET first_name="Nancy", last_name="Tor", salary = 20000 WHERE employee_id = 100;

# For Multiple Row Values -

SELECT * FROM employees;

UPDATE employees SET salary = 30000, manager_id = 200 WHERE job_id = 9; 
