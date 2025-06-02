-- Use the database
USE interview;

CREATE TABLE employee_7 (
    EmployeeID INT,
    Name VARCHAR(50),
    Department VARCHAR(50)
);

-- to remove safe mode
SET SQL_SAFE_UPDATES = 0; 

-- query to delete duplicate rows in a table without using the ROWID keyword.

DELETE FROM employee_7
WHERE EmployeeID NOT IN (
    SELECT * FROM (
        SELECT MIN(EmployeeID)
        FROM employee_7
        GROUP BY Name, Department
    ) AS temp
);

select * from employee_7;

-- enable safe mode
SET SQL_SAFE_UPDATES = 0; 
