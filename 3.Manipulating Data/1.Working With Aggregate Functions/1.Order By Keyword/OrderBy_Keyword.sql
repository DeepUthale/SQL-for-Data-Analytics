# The ORDER BY keyword is used to Arrange or Sort Result-Set in Ascending or Descending Order.
# ORDER BY Sorts the Data in Ascending Order by Default or we use ASC Keyword.
# In case we to Sort in Descending Order we use DESC Keyword.

CREATE TABLE employees (
	employee_id int NOT NULL,
	PRIMARY KEY (employee_id),
    first_name varchar(255) NOT NULL,
    last_name varchar(255),
	email varchar(255) NOT NULL,
    phone_number varchar(255),
    hire_date date,
    job_id int NOT NULL,
    salary int NOT NULL,
    manager_id int
);

SELECT * FROM employees;

# Sorting Salary with First Names in Ascending Order
SELECT first_name, salary
FROM employees
ORDER BY salary;

# Sorting Salary with First Names in Descending Order
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

# Sorting First Names in Ascending Order and Last Names Associated with them in Descending Order.
SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC, last_name DESC;
