-- Use the database
USE interview;

CREATE TABLE Sales_3 (
    product VARCHAR(50),
    month VARCHAR(10),
    amount INT
);

-- pivot a table to convert rows into columns
-- 🙌 Pivoting a table means transforming row values into columns, which is especially useful for generating reports or summaries 
-- EG- Turning monthly sales rows into monthly sales columns per product.

SELECT
  month,
  SUM(CASE WHEN product = 'Apple' THEN amount ELSE 0 END) AS Apple,
  SUM(CASE WHEN product = 'Banana' THEN amount ELSE 0 END) AS Banana
FROM Sales_3
GROUP BY month;
