-- Use the database
USE interview;

-- query to check if a table contains any records.

select case
 when exists( select * from employee) then 'Has record'
 else 'no record ' end as result
