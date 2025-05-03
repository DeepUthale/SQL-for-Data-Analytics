# INSERT Statement is used to Insert New Records in Table.
# It can be writter in Two Ways : Specifying both Column Names and Values -

SELECT * FROM employees;

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id) 
VALUES (116, "Allie", "Stob", "allie.stob@sqltutorial.com", "515,456,3256", "98-10-12", 2, 15000, 100);

# - And Adding Records for all the Columns in Table. 

SELECT * FROM employees;

INSERT INTO employees VALUES (117, "Jim", "Carter", "jim.carter@sqltutorial.org", "515,238,8643", "00-05-10", 5, 13000, 101);
