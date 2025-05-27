-- Use the database
USE interview;

CREATE TABLE employee_9 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    updated_at DATETIME 
);

INSERT INTO employee_9 (EmployeeID, Name, Salary, updated_at) VALUES
(1, 'Alice', 80000, NOW() - INTERVAL 30 MINUTE),
(2, 'Bob', 70000, NOW() - INTERVAL 90 MINUTE),
(3, 'Carol', 95000, NOW() - INTERVAL 10 MINUTE),
(4, 'David', 85000, NOW() - INTERVAL 2 HOUR);

-- query to fetch records updated within the last hour.
 
select *
from employee_9
where updated_at >=now()- interval 1 hour;
