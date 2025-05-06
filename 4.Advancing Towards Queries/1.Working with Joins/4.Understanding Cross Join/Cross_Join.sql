# CROSS JOIN
# Cross Join is also called a Cartesian Join as it Performs Cross Product of-
# - Records of Two or More Jointed Tables.

SELECT * FROM sales;

SELECT * FROM orders;

-- Select SalesId FROM sales Table and CROSS JOIN with orderId of orders Table.

SELECT s.salesId, o.orderId FROM sales s
CROSS JOIN orders o;
