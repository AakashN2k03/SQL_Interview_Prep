-- Use the database
USE interview;

-- EXCEPT and MINUS do the same job:
-- They return the rows from the first query that do not exist in the second query.

-- SUPPORTED IN POSTGRESQL, SQL SERVER 
SELECT * FROM employee
except
SELECT * FROM employee_3;

-- SUPPORTED IN ORACLE
SELECT id, name FROM employee
MINUS
SELECT id, name FROM employee_3;
