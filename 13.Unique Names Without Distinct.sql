-- Use the database
use interview;

CREATE TABLE Students (
    ID INT,
    Name VARCHAR(50)
);

INSERT INTO Students (ID, Name) VALUES
(1, 'Aakash'),
(2, 'Rahul'),
(3, 'Aakash'),
(4, 'Priya'),
(5, 'Rahul');

-- query to duplicates in a query without using DISTINCT
select name
from Students
group by name
