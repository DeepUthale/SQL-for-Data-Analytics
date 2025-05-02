# HAVING Keyword is used in Combination with GROUP BY Keyword to Restrict the Groups of Returned Rows,
# to Only those, Whose Condition is TRUE.

SELECT * FROM titanic;

-- Calculate Total Sum of fare, and GROUP BY Deck to Find the Sum According to Deck.
-- HAVING KeyWord is used for Condition, for Total in Sum(fare) column.
-- ORDER BY is used to Sort total.

SELECT deck, sum(fare) as total
FROM titanic
GROUP BY deck
HAVING total>150000
ORDER BY total;

-- Calculate Total Sum of fare, and GROUP BY Alive and Passenger_Class to Find the Sum According to Both.
-- HAVING KeyWord is used for Condition, for Total in Sum(fare) column.
-- ORDER BY is used to Sort total.

SELECT alive, pclass, sum(fare) as total
FROM titanic
GROUP BY alive, pclass
HAVING total>100000
ORDER BY total;
