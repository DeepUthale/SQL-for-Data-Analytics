# Aliases are used to give a Temporary Name to a Table or Columns.
# Alias remains only till query is being executed.
# Can assign Alias with AS Keyword to specific Table or Column.

SELECT * FROM titanic;

-- Count Passenger_Numbers based on town and gender.
-- GROUP BY town and gender and Sort Passengers.
SELECT embark_town as town, sex as gender, count(Passenger_No) as Passengers
FROM titanic
GROUP BY embark_town, gender
ORDER BY Passengers;

-- Count Passengers based on alone and class.
-- GROUP BY alone and class and Sort Passengers.
SELECT alone, class as "cs", count(Passenger_No) as Passengers
FROM titanic
GROUP BY alone, cs
ORDER BY Passengers;
