# TCL Commands COMMIT and ROLLBACK with UPDATE

SELECT * FROM employees;

UPDATE employees SET salary = 30000; -- All Values in Salary are Set to 30000.
ROLLBACK; -- undo the Changes.

SELECT * FROM employees;

UPDATE employees SET salary = 20000 WHERE job_id = 9;
COMMIT;
