-- Use the database
USE interview;

-- Table - students
 -- query to fetch alternating rows from a table.

select * from 
( select *,row_number() over () as rnk
from students) as sub
where rnk%2=1;
