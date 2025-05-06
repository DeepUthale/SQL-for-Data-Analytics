# WHERE Clause
# The WHERE Clause is used to Filter Records.
# It is used to Extract Only those Records that Fulfill a Special Condition.

SELECT * FROM orders;

SELECT * FROM sales;

-- RIGHT JOIN Sales Table to Orders Table based on orderId From Sales Table and orderId From Orders Table.
-- WHERE Clause to Specify a Condition.
SELECT o.orderID, o.customerid, o.ordertotal, o.discountrate, o.orderdate, s.salesId, s.salestotal
FROM orders o
RIGHT JOIN sales s ON o.orderId = s.orderId
WHERE s.salestotal > 100;
