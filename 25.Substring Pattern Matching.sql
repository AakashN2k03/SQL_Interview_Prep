-- Use the database
USE interview;

CREATE TABLE employee_14 (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- SYNTAX -> SUBSTRING(string, start_position, length)

-- 1. Display the names of employees whose name contains the
-- (i).second Letter as 'L '

select * from employee_14;
select name 
from employee_14
where substring(name,2,1)='L';

-- (ii)fourth Letter as 'M'

select name
from employee_14
where substring(name,4,1)='M'

