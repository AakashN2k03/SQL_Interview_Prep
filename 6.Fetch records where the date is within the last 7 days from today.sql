-- Use the database
USE interview;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date DATE
);

-- Fetch records where the date is within the last 7 days from today.

 select * from Orders
 where order_date >=curdate()-interval 7 day
 AND order_date <= CURDATE();

-- ALTERNATE WAY

 select * from Orders
 where order_date >=date_sub(curdate(),interval 7 day)
 AND order_date <= CURDATE();
