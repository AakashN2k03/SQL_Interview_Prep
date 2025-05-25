-- Use the database
USE interview;

CREATE TABLE sales_2 (
    id INT PRIMARY KEY,
    sale_date DATE,
    amount INT
);

-- query to calculate the running total of sales by date.
SELECT sale_date, amount,
       SUM(amount) OVER (ORDER BY sale_date) AS running_total
FROM sales_2;
