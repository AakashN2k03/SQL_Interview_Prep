-- Use the database
USE interview;

CREATE TABLE employee_12 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    HireDate DATE
);
-- query to find employees hired in the same month of any year.
  
select *
from employee_12
WHERE MONTH(HireDate) = MONTH(CURDATE());

-- This query fetches all employees whose HireDate is in the same month as today, regardless of the year.
