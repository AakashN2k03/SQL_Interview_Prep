-- Use the database
USE interview;

CREATE TABLE employee_5 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- Write a query to count how many employees share the same salary.
select salary,count(*)
from employee_5
group by salary

 -- if name also needed
    
select group_concat(name) as name,salary,count(*)
from employee_5
group by salary
