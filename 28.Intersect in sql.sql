-- Use the database
USE interview;

(select * from employee)
intersect
(select * from employee_3);
