# Joining Tables
# To JOIN Three or More Tables using a Subquery, you can use a Nested SELECT Statement-
# - To Retrive Data From One Table based on the Values in Another Table, and then-
# - JOIN the Results of the Subquery with the Remaining Tables in the Outer SELECT Statement.

-- Following Three Tables have a Relationship via a FOREIGN KEY
CREATE TABLE employee(
	id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE call_outcome(
	id INT PRIMARY KEY,
    outcome_text CHAR(128)
);

CREATE TABLE `call`(
	id INT PRIMARY KEY,
    employee_id INT, 
    FOREIGN KEY (employee_id) REFERENCES employee(id),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES orders(customerId),
    start_time datetime,
    end_time datetime NOT NULL,
    call_outcome_id INT NOT NULL,
    FOREIGN KEY (call_outcome_id) REFERENCES call_outcome(id)
);

-- Following Three Tables are Connected by JOINS have a Relationship via a FOREIGN KEY
CREATE TABLE students(
	s_id INT PRIMARY KEY,
    s_name VARCHAR(255)
);

INSERT INTO students VALUES (1, 'Jack');
INSERT INTO students VALUES (2, 'Rithvik');
INSERT INTO students VALUES (3, 'Jaspreet');
INSERT INTO students VALUES (4, 'Praveen');
INSERT INTO students VALUES (5, 'Bisa');
INSERT INTO students VALUES (6, 'Suraj');

SELECT * FROM students;

CREATE TABLE details(
	address_city VARCHAR(255),
    email_ID VARCHAR(255),
    school_id INT PRIMARY KEY,
    accomplishments VARCHAR(255)
);

INSERT INTO details VALUES ('Banglore', 'jsings@geeks.com', 1020, 'ACM IPC selected');
INSERT INTO details VALUES ('Hyderabad', 'praveen@geeks.com', 1030, 'Geek of the month');
INSERT INTO details VALUES ('Delhi', 'rithvik@geeks.com', 1012, 'IOI finalist');
INSERT INTO details VALUES ('Chennai', 'om@geeks.com', 1111, 'Geek of the year');
INSERT INTO details VALUES ('Banglore', 'suraj@geeks.com', 1008, 'IMO finalist');
INSERT INTO details VALUES ('Mumbai', 'sasukeh@geeks.com', 2211, 'Made a robot');

SELECT * FROM details;

CREATE TABLE marks(
	school_id INT,
    FOREIGN KEY (school_id) REFERENCES details(school_id),
    s_id INT,
    FOREIGN KEY (s_id) REFERENCES students(s_id),
    score INT,
    `status` VARCHAR(255)
);

INSERT INTO marks VALUES (1008, 6, 95, 'pass');
INSERT INTO marks VALUES (1012, 2, 97, 'pass');
INSERT INTO marks VALUES (1020, 3, 100, 'pass');
INSERT INTO marks VALUES (1030, 4, 33, 'fail');
INSERT INTO marks VALUES (2211, 5, 75, 'pass');

SELECT * FROM marks;

-- INNER JOINED Three Tables with Relationship FOREIGN KEY 
SELECT s_name, score, status, address_city, email_id, accomplishments FROM students s
INNER JOIN marks m ON s.s_id = m.s_id
INNER JOIN details d ON d.school_id = m.school_id;
