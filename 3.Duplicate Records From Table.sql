-- Use the database
USE interview;

-- Create employee_3 table
CREATE TABLE employee_3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

-- Query to find duplicate emp_name(s)
SELECT emp_name, COUNT(*) AS duplicate_count
FROM employee_3
GROUP BY emp_name
HAVING COUNT(*) > 1;
