-- Use the database
USE interview;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity_sold INT
);

INSERT INTO Products (product_id, product_name, quantity_sold) VALUES
(1, 'Laptop', 10),
(2, 'Smartphone', 0),   -- never sold
(3, 'Tablet', 5),
(4, 'Smartwatch', 0),   -- never sold
(5, 'Monitor', 3);

-- Retrieve products that were never sold
select * from products
where quantity_sold=0;

