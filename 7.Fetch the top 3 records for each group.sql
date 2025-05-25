-- Use the database
USE interview;

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    sales_amount INT
);

-- fetch the top 3 records for each group in a table
SELECT id, salesperson, region, sales_amount
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales_amount DESC) AS rn
    FROM Sales
) AS ranked_sales
WHERE rn <= 3;
