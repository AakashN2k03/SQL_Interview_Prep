-- Use the database
USE interview;

CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    purchase_date DATE
);

-- Retrieve customers who made their first purchase in the last 6 months.

SELECT customer_id, MIN(purchase_date) AS first_purchase
FROM purchases
GROUP BY customer_id
HAVING MIN(purchase_date) >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
