-- Use the database
USE interview;

CREATE TABLE employee_13 (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Display the names of all employees having 'M' in any position in their name

select name
from employee_13 
where name like '%m%';


 -- Display the names of all employees whose name does not contain 'M' anywhere

select name
from employee_13 
where name  not like '%m%'


