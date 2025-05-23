-- Write a query to find the second highest salary in an employee table.

-- USE interview;

-- CREATE TABLE employee (
--     emp_id INT PRIMARY KEY,
--     emp_name VARCHAR(50),
--     salary INT 
-- );


select emp_name,salary from employee
where salary=(
SELECT DISTINCT salary FROM employee ORDER BY salary DESC LIMIT 1 OFFSET 1)
