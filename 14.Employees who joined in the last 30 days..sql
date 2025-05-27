-- Use the database
USE interview;

CREATE TABLE employee_6 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT,
    join_date DATE
);

-- query to find the employees who joined in the last 30 days.

SELECT *
FROM employee_6
WHERE join_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 30 DAY) AND CURDATE();
