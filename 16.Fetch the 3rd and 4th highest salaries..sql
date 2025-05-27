-- Use the database
USE interview;

CREATE TABLE employee_8 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT
);

-- query to fetch the 3rd and 4th highest salaries.

select distinct Salary
from employee_8
order by Salary desc
limit 2 offset 2;

-- The below query is correct , but modern versions of sql do not support usage of in,all,any in subquery

select * from employee_8
where salary in (
select distinct(salary)
from employee_8
order by salary desc
limit 2 offset 2
);

-- ALTERNATE APPROACH - USE JOIN

SELECT e1.*
FROM employee_8 e1
join(
    SELECT DISTINCT Salary
    FROM employee_8
    ORDER BY Salary DESC
    LIMIT 2 OFFSET 2
)as e2
on e1.salary=e2.salary;
