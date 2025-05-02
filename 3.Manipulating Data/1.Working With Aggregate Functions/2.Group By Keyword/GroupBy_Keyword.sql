# GROUP BY keyword is used to Colllect Data from Multiple Rows,
# And Group the Result by one or more Column.
# In most cases, we use Aggregate Functions on Grouped Column(s).

SELECT * FROM titanic;

-- Group the Count of Passenger_Number by the Column Embark_town.
SELECT embark_town, count(Passenger_No)
FROM titanic
GROUP BY embark_town;

-- Group the Count of Passenger_Number by the Columns Embark_town and sex.
-- And Sort the Count in Descending Order. 
SELECT embark_town, sex, count(Passenger_No)
FROM titanic
GROUP BY embark_town,sex
ORDER BY count(Passenger_No) DESC;

-- Group the Count of Passenger_Number by the Columns Alive and Who.
-- And Sort the Count in Descending Order. 
SELECT alive,who, count(Passenger_No)
FROM titanic
GROUP BY alive,who
ORDER BY count(Passenger_No) DESC;
