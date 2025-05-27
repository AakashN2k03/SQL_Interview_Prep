-- Use the database
USE interview;

CREATE TABLE employee_10 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

-- query to list employees in departments that have fewer than 5 employees.
-- detailed employee records from those departments <5.
  
SELECT *
FROM employee_10
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM employee_10
    GROUP BY DepartmentID
    HAVING COUNT(*) <= 5
);

-- summary of departments with ≤5 employees.
SELECT DepartmentID, COUNT(*) as employee_count
FROM employee_10
GROUP BY DepartmentID
HAVING COUNT(*) <= 5;


