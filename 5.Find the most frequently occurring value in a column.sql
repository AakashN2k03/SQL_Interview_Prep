-- Use the database
USE interview;

-- Create votes table
CREATE TABLE Votes (
    id INT PRIMARY KEY,
    candidate VARCHAR(50)
);

 -- Write a query to find the most frequently occurring value in a column.
select candidate ,count(*)
from votes
group by candidate
order by count(*) desc limit 1

