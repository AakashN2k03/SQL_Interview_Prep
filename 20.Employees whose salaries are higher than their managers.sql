-- Use the database
USE interview;

CREATE TABLE employee_11 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    ManagerID INT  -- references another EmployeeID
);

-- query to find employees whose salaries are higher than their managers.

select e1.Name
from employee_11 e1
join employee_11 e2
on e1.managerId=e2.EmployeeID
where e1.Salary > e2.Salary
