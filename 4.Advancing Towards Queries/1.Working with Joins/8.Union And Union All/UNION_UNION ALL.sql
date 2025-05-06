# UNION and UNION ALL
# Both UNION and UNION ALL Combine the Result of Two or More Tables.
# The Result Set of UNION "Does Not" Contain Duplicate Rows, While the Result-
# - Set of UNION ALL Returns All the Rows From Both Tables.
# The Execution Time of UNION ALL is "Less Than" the Execution Time of UNION as it-
# - Does Not Remove the Duplicate Rows.

-- UNION will Give Distinct Records
SELECT s_id FROM students
UNION
SELECT s_id FROM marks;

-- UNION ALL will Give All Records, Including Duplicates 
SELECT s_id FROM students
UNION ALL
SELECT s_id FROM marks;

# Deep Uthale