-- Use the database
USE interview;

-- Create employee_2 table
CREATE TABLE employee_2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);


-- Query: Fetch employees whose names contain exactly two 'a's
SELECT emp_name, salary
FROM employee_2
WHERE LENGTH(emp_name) - LENGTH(REPLACE(LOWER(emp_name), 'a', '')) = 2;
