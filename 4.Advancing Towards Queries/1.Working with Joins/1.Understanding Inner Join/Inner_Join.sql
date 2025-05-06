# Inner Join
# The INNER JOIN Keyword Selects Records that have Matching Values in Both Tables. 

CREATE TABLE sales(
salesId int UNIQUE,
orderId int,
salestotal float4
);

INSERT INTO sales VALUES (201, 101, 142.5);
INSERT INTO sales VALUES (202, 102, 180);
INSERT INTO sales VALUES (203, 103, 100);
INSERT INTO sales VALUES (204, 104, 500);

SELECT * FROM sales; -- DEEP UTHALE

CREATE TABLE orders (
orderId int UNIQUE,
customerid int UNIQUE,
ordertotal int,
discountrate float4,
orderdate datetime
);

INSERT INTO orders VALUES (101, 1, 150, 0.05, "2024-04-25 10:00:00");
INSERT INTO orders VALUES (102, 2, 200, 0.1, "2024-04-25 11:30:00");
INSERT INTO orders VALUES (103, 3, 100, 0, "2024-04-26 09:45:00");

SELECT * FROM orders;

-- Select Values From Sales Table and Inner Join Sales to Orders based on orderId from Orders table to orderId of Sales Table.
SELECT s.orderId, o.orderId ,s.salesId, s.salestotal FROM sales s
INNER JOIN orders o ON o.orderId = s.orderId;

-- Select Values From Orders Table and Inner Join Orders to Orders based on orderId from Orders table to orderId of Sales Table.
SELECT s.salestotal , o.ordertotal, o.orderdate FROM orders o
INNER JOIN sales s ON o.orderId = s.orderId;
