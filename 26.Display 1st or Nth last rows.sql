-- Use the database
USE interview;

select * from employee_14;

 -- 1. Display the first and last row of the table
-- First row
(SELECT * FROM employee_14 ORDER BY id ASC LIMIT 1)
UNION
-- Last row
(SELECT * FROM employee_14 ORDER BY id DESC LIMIT 1);

-- 2.Display the last two rows of the table
(SELECT * FROM employee_14 ORDER BY id DESC LIMIT 2);

 
 -- 3. Display the first and last 2 rows of the table
-- First 2 rows
(SELECT * FROM employee_14 ORDER BY id ASC LIMIT 2)
UNION
-- Last 2 rows
(SELECT * FROM employee_14 ORDER BY id DESC LIMIT 2);
