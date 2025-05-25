-- Use the database
USE interview;

-- Create employee_4 table
CREATE TABLE employee_4 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT
);

-- Find employees who earn more than the average salary in their department.

select name from employee_4 e1
where e1.salary > (select avg(salary) from employee_4 e2
where e1.departmentId=e2.departmentId)
