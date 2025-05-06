# LEFT JOIN
# The LEFT JOIN Command Returns all Rows From the Left Table, and the Matching Rows From the Right Table.
# The Result is NULL from the Right side, if there is no Match.

SELECT * FROM sales;

SELECT * FROM orders;

-- Select Columns From Orders and Uncommon Columns From Sales.
-- LEFT JOIN Sales to Orders with OrderId from Orders and OrderId from Sales.

SELECT o.orderId, o.customerId, o.ordertotal, o.discountrate, o.orderdate, s.salesId, s.salestotal
FROM orders o
LEFT JOIN sales s ON o.orderId = s.orderId;
