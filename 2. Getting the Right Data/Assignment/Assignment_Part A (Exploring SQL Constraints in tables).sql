# Books Table Contains 'author' Column as Primary Key
CREATE TABLE Books (
	ISBN varchar(17) DEFAULT '000-0-00-000000-0',
    title varchar(255) UNIQUE,
    author varchar(255) NOT NULL,
    genre varchar(255) NOT NULL,
    price int NOT NULL,
    PRIMARY KEY(author)
);

# Insert Values into Books Table
INSERT INTO Books VALUES ("978-3-16-148410-0", "Maryland", "Paul Marks", "Drama", 500);
INSERT INTO Books VALUES ("576-2-85-697531-2", "Pirates", "Melony Lois", "Fiction", 1800);
INSERT INTO Books (ISBN, title, author, genre, price)
VALUES("268-1-23-756123-0", "Planet X", "Jake Rowling", "Sci-Fi", 3200);
INSERT INTO Books (title, author, genre, price)
VALUES("Hello World", "Myself", "Comedy", 100);

SELECT * FROM books;

# Authors Table Contains 'ID' as Primary Key
# Foreign Key 'author' in Authors table References 'author' Primary Key in Books table
CREATE TABLE Authors (
	ID int PRIMARY KEY,
    author varchar(255),
    nationality varchar(255),
    FOREIGN KEY (author) REFERENCES Books(author)
);

# Insert Values into Authors Table
INSERT INTO Authors (ID, author, nationality) 
VALUES(01, "Paul Marks", "England");
INSERT INTO Authors (ID, author, nationality) 
VALUES(02, "Melony Lois", "Australia");
INSERT INTO Authors (ID, author, nationality) 
VALUES(03, "Jake Rowling", "USA");
INSERT INTO Authors (ID, author, nationality) 
VALUES(04, "Myself", "Spain");
# Error as no value found for Foreign Key Reference
INSERT INTO Authors (ID, author, nationality) 
VALUES(04, "Adam Sandler", "Spain");

SELECT * FROM authors;

# Customer Table Contains 'customer ID' Column as Primary Key
CREATE TABLE Customers(
	customer_ID int NOT NULL PRIMARY KEY,
    cus_name varchar(255) DEFAULT 'No Name',
    cust_email varchar(255) UNIQUE,
    cust_address varchar(255) NOT NULL
);

# Insert Values into Customers Table
INSERT INTO Customers VALUES (101, "John", "john@gmail.com", "552, Willson street, london");
INSERT INTO Customers VALUES (102, "Mary", "mary1998@outlook.com", "386, Medow Manor, belgium");
INSERT INTO Customers (customer_ID, cust_email, cust_address)
VALUES (103, "hello@gmail.com", "32, Windswept Valley, France");
INSERT INTO Customers (customer_ID, cust_email, cust_address)
VALUES (104, "world@gmail.com", "64, Silent Hills, Spain");

SELECT * FROM customers;

# Orders Table Contains 'order ID' Column as Primary Key
# Foreign Key 'customer_ID' in Orders table References 'customer_ID' Primary Key in Customers table
CREATE TABLE Orders (
	order_ID int NOT NULL UNIQUE PRIMARY KEY,
    customer_ID int NOT NULL,
    order_date DATE NOT NULL,
    amount int NOT NULL,
    FOREIGN KEY (customer_ID) REFERENCES Customers (customer_ID)
);

# Insert Values into Orders Table
INSERT INTO Orders VALUES (10123, 101, '2025-10-25', 5600);
INSERT INTO Orders VALUES (10124, 102, '2024-08-10', 2000);
INSERT INTO Orders VALUES (10125, 103, '2025-02-28', 800);
INSERT INTO Orders VALUES (10126, 104, '2025-07-30', 12500);

SELECT * FROM orders;
