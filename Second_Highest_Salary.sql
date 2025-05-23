-- Use the database
USE interview;

-- Create employee table
CREATE TABLE IF NOT EXISTS employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

-- Sample data insertion (optional, add this if you want to test)
INSERT INTO employee (emp_id, emp_name, salary) VALUES
(1, 'Alice', 60000),
(2, 'Bob', 70000),
(3, 'Charlie', 50000),
(4, 'David', 90000),
(5, 'Eva', 70000),
(6, 'Frank', 80000);

-- Query to find the second highest salary and employee(s) earning it
SELECT emp_name, salary 
FROM employee
WHERE salary = (
    SELECT DISTINCT salary 
    FROM employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
);
