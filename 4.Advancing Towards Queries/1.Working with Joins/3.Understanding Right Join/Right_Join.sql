# RIGHT JOIN
# Right Joins are Similar to Left Joins Except, they Return all Rows From the Table in the-
# - RIGHT JOIN Clause and only Matching Rows from the Table in the FROM Clause.

SELECT * FROM orders;

SELECT * FROM sales;

-- Select All Columns From Right Table and All Uncommon Columns From the Left Table.
-- RIGHT JOIN Orders to Sales with OrderId from Orders and OrderId from Sales.

SELECT o.orderId, o.customerid, o.ordertotal, o.discountrate, o.orderdate, s.salesId, s.salestotal
FROM orders o
RIGHT JOIN sales s ON o.orderId = s.orderId;
