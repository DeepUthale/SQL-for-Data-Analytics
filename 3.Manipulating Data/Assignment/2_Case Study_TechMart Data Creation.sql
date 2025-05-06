CREATE TABLE Products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
	price DECIMAL,
    category VARCHAR(255)
);

CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(16)
);

CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    quantity INT,
    order_date DATE
);

# 2. Insert 5 records into the Products table with sample data
INSERT INTO Products VALUES(101, "Pen", 10.0, "Stationery");
INSERT INTO Products VALUES(102, "Mobile", 5300.20, "Electronics");
INSERT INTO Products VALUES(103, "Pencil", 5.5, "Stationery");
INSERT INTO Products VALUES(104, "T-Shirt", 350.0, "Clothing");
INSERT INTO Products VALUES(105, "Sweater", 820.30, "Clothing");

SELECT * FROM products;

# 3. Insert 3 records into the Customers table with sample data
INSERT INTO Customers VALUES(201, "Max", "max@gmail.com", "256-432-4789");
INSERT INTO Customers VALUES(202, "Emily", "emily@gmail.com", "256-252-8632");
INSERT INTO Customers VALUES(203, "John", "john@gmail.com", "256-784-1763");

SELECT * FROM customers;

# 4. Insert 10 records into the Orders table with sample data, ensuring that each
# order is associated with a random customer and product
INSERT INTO Orders VALUES(254800, 201, 102, 5, "2025-02-25");
INSERT INTO Orders VALUES(254810, 202, 104, 3, "2025-10-19");
INSERT INTO Orders VALUES(254820, 203, 101, 10, "2025-01-05");
INSERT INTO Orders VALUES(254801, 201, 104, 2, "2025-05-03");
INSERT INTO Orders VALUES(254811, 202, 105, 1, "2025-10-19");
INSERT INTO Orders VALUES(254821, 203, 103, 10, "2025-01-05");
INSERT INTO Orders VALUES(254802, 201, 105, 1, "2025-12-20");
INSERT INTO Orders VALUES(254812, 202, 101, 50, "2025-03-08");
INSERT INTO Orders VALUES(254822, 203, 102, 2, "2025-05-30");
INSERT INTO Orders VALUES(254803, 201, 103, 3, "2025-11-30");

SELECT * FROM orders;
