# Self Join
# A Self Join is a Regular Join, but the Table is Joined with Itslef.

SELECT * FROM sales;

SELECT * FROM orders;

-- SELF JOIN orderId FROM Orders Table and orderId FROM Sales Table 
SELECT o.orderId, s.orderId, o.orderdate FROM sales s, orders o
WHERE o.orderId <> s.orderId
ORDER BY o.ordertotal;
