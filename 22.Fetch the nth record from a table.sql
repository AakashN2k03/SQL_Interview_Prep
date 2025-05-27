-- Use the database
USE interview;

-- Table - students
-- query to fetch the nth record from a table.

WITH N_records AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY ID) AS RowNum
    FROM students
)
SELECT *
FROM N_records
WHERE RowNum = 3;  -- Replace n with 3, 4, etc.

-- ALternative Way

SELECT *
FROM students
ORDER By ID
LIMIT 1 OFFSET 2;  -- 3rd record (offset starts at 0)
