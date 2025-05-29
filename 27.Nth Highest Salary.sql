-- Use the database
USE interview;

CREATE TABLE employee_15 (
    id INT,
    name VARCHAR(100),
    salary INT
);

INSERT INTO employee_15 (id, name, salary) VALUES
(1, 'Aakash', 50000),
(2, 'Ravi', 60000),
(3, 'Meena', 70000),
(4, 'Kiran', 70000),
(5, 'Pooja', 50000),
(6, 'Nirmal', 60000);

WITH SalaryRank AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
  FROM employee_15
)
SELECT *
FROM SalaryRank
WHERE rn = 3;

-- DENSE_RANK() ✅ (Best for finding Nth highest distinct salary)
-- eg:70000 → 1, 70000 → 1, 60000 → 2, 60000 → 2, 50000 → 3
