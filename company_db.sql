CREATE DATABASE company_db;

USE company_db;

-- DEPARTMENTS TABLE

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- EMPLOYEES TABLE
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    employee_id INT,
    project_cost DECIMAL(12,2),
    start_date DATE,

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

DROP TABLE projects;

-- CUSTOMERS TABLE

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- TRANSACTIONS TABLE

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(50),
    amount DECIMAL(12,2),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

-- EMPLOYEE_HISTORY TABLE
CREATE TABLE employee_history (
    employee_id INT,
    salary DECIMAL(10,2),
    effective_date DATE,

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

-- INSERT DATA INTO DEPARTMENTS
INSERT INTO departments
(department_id, department_name)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales');

-- INSERT DATA INTO EMPLOYEES
INSERT INTO employees
(employee_id, employee_name, department_id, salary, joining_date, city)
VALUES
(1, 'Rahul Sharma', 101, 75000.00, '2022-01-15', 'Bangalore'),
(2, 'Priya Reddy', 102, 65000.00, '2021-06-20', 'Hyderabad'),
(3, 'Arjun Kumar', 101, 85000.00, '2020-03-10', 'Chennai'),
(4, 'Sneha Rao', 103, 72000.00, '2023-02-25', 'Bangalore'),
(5, 'Vikram Singh', 104, 60000.00, '2022-08-12', 'Mumbai'),
(6, 'Ananya Patel', 105, 68000.00, '2021-11-05', 'Pune'),
(7, 'Kiran Kumar', 101, 90000.00, '2019-09-18', 'Bangalore'),
(8, 'Divya Sharma', 103, 78000.00, '2020-12-01', 'Delhi'),
(9, 'Rohit Verma', 104, 62000.00, '2023-07-14', 'Hyderabad'),
(10, 'Pooja Nair', 105, 70000.00, '2022-04-22', 'Kochi');

-- -- INSERT DATA INTO PROJECTS

INSERT INTO projects
(project_id, project_name, employee_id, project_cost, start_date)
VALUES
(1001, 'E-Commerce Platform', 1, 500000.00, '2024-01-10'),
(1002, 'Employee Management System', 3, 350000.00, '2024-02-15'),
(1003, 'AI Chatbot', 7, 750000.00, '2024-03-20'),
(1004, 'Payroll System', 4, 250000.00, '2024-04-05'),
(1005, 'Marketing Analytics', 5, 300000.00, '2024-05-12'),
(1006, 'Sales Dashboard', 6, 400000.00, '2024-06-01'),
(1007, 'Financial Reporting System', 8, 450000.00, '2024-07-18'),
(1008, 'Digital Marketing Campaign', 9, 200000.00, '2024-08-10'),
(1009, 'CRM System', 10, 550000.00, '2024-09-15');

-- INSERT DATA INTO CUSTOMERS
INSERT INTO customers
(customer_id, customer_name, city)
VALUES
(201, 'Amit Shah', 'Bangalore'),
(202, 'Neha Reddy', 'Hyderabad'),
(203, 'Suresh Kumar', 'Chennai'),
(204, 'Meena Rao', 'Mumbai'),
(205, 'Ravi Patel', 'Pune'),
(206, 'Kavya Singh', 'Delhi'),
(207, 'Manoj Verma', 'Bangalore'),
(208, 'Lakshmi Nair', 'Kochi'),
(209, 'Ajay Kumar', 'Hyderabad'),
(210, 'Swathi Rao', 'Chennai');

-- INSERT DATA INTO TRANSACTIONS

INSERT INTO transactions
(transaction_id, customer_id, transaction_date, transaction_type, amount)
VALUES
(5001, 201, '2024-01-05', 'Purchase', 15000.00),
(5002, 202, '2024-01-10', 'Purchase', 25000.00),
(5003, 203, '2024-02-15', 'Purchase', 18000.00),
(5004, 201, '2024-03-20', 'Refund', 5000.00),
(5005, 204, '2024-04-12', 'Purchase', 32000.00),
(5006, 205, '2024-05-18', 'Purchase', 22000.00),
(5007, 206, '2024-06-10', 'Purchase', 45000.00),
(5008, 207, '2024-07-05', 'Purchase', 12000.00),
(5009, 202, '2024-08-15', 'Purchase', 28000.00),
(5010, 208, '2024-09-20', 'Purchase', 35000.00),
(5011, 209, '2024-10-01', 'Refund', 7000.00),
(5012, 203, '2024-10-15', 'Purchase', 19000.00);

-- INSERT DATA INTO EMPLOYEE_HISTORY
INSERT INTO employee_history
(employee_id, salary, effective_date)
VALUES
(1, 60000.00, '2022-01-15'),
(1, 68000.00, '2023-01-01'),
(1, 75000.00, '2024-01-01'),

(2, 52000.00, '2021-06-20'),
(2, 58000.00, '2023-01-01'),
(2, 65000.00, '2024-01-01'),

(3, 70000.00, '2020-03-10'),
(3, 78000.00, '2022-01-01'),
(3, 85000.00, '2024-01-01'),

(4, 60000.00, '2023-02-25'),
(4, 68000.00, '2024-01-01'),
(4, 72000.00, '2024-07-01'),

(5, 50000.00, '2022-08-12'),
(5, 55000.00, '2023-01-01'),
(5, 60000.00, '2024-01-01'),

(6, 55000.00, '2021-11-05'),
(6, 62000.00, '2023-01-01'),
(6, 68000.00, '2024-01-01'),

(7, 75000.00, '2019-09-18'),
(7, 82000.00, '2022-01-01'),
(7, 90000.00, '2024-01-01'),

(8, 65000.00, '2020-12-01'),
(8, 72000.00, '2022-01-01'),
(8, 78000.00, '2024-01-01'),

(9, 52000.00, '2023-07-14'),
(9, 58000.00, '2024-01-01'),
(9, 62000.00, '2024-07-01'),

(10, 58000.00, '2022-04-22'),
(10, 65000.00, '2023-01-01'),
(10, 70000.00, '2024-01-01');

SHOW DATABASES;

USE company_db;

SHOW TABLES;

SELECT * FROM departments;

SELECT * FROM  employees;

SELECT * FROM projects;

SELECT * FROM customers;

SELECT * FROM transactions;

SELECT * FROM employee_history;

-- Department Salary Analysis Which query correctly returns the employee count and average salary for each department?
SELECT department_id,
       COUNT(*) AS employee_count,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

-- High Average Salary Departments Which query returns departments whose average salary is greater than 70000?
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 70000;

/* Employee Department Report 
Which query correctly displays employee name, department name, and salary?*/

SELECT e.employee_name,
       d.department_name,
       e.salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

/* Employees Without Department
Which query finds employees whose department does not exist in the departments table? */

SELECT e.employee_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

/* 5. Employees With Multiple Projects
Which query finds employees assigned to more than 2 projects? */

SELECT employee_id
FROM projects
GROUP BY employee_id
HAVING COUNT(*) > 2;

INSERT INTO projects
(project_id, project_name, employee_id, project_cost, start_date)
VALUES
(1010, 'Mobile Application', 1, 300000.00, '2024-10-01'),
(1011, 'Cloud Migration', 1, 450000.00, '2024-11-01');

SELECT employee_id
FROM projects
GROUP BY employee_id
HAVING COUNT(*) > 2;

SELECT employee_id,
       COUNT(*) AS project_count
FROM projects
GROUP BY employee_id
HAVING COUNT(*) > 2;


/*6. Total Project Cost
Which query calculates total project cost for each employee?*/
SELECT employee_id,
       SUM(project_cost) AS total_cost
FROM projects
GROUP BY employee_id;

/*7. Top 5 Salaries
Which query returns the 5 highest salaries?*/

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

/*8. Second-Highest Distinct Salary
Which query correctly returns the second-highest distinct salary?*/
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

/*9. Employees Above Overall AverageWhich query finds employees whose salary is greater than the overall average salary?*/

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

/*10. Departments With At Least 5 Employees
Which query returns departments having at least 5 employees?*/

SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 5;

/* 11. Duplicate Employee Names
Which query identifies employee names appearing more than once? */

SELECT employee_name
FROM employees
GROUP BY employee_name
HAVING COUNT(*) > 1;


/* 12. City-wise Employee Analysis
Which query returns cities having more than 10 employees? */

SELECT city
FROM employees
GROUP BY city
HAVING COUNT(*) > 10;


/* 13. High Project Cost Employees
Which query finds employees whose total project cost exceeds 1,000,000? */

SELECT employee_id
FROM projects
GROUP BY employee_id
HAVING SUM(project_cost) > 1000000;


/* 14. Employee Project Report
Which query correctly returns each employee's total project cost? */

SELECT e.employee_id,
       e.employee_name,
       SUM(p.project_cost) AS total_cost
FROM employees e
JOIN projects p
    ON e.employee_id = p.employee_id
GROUP BY e.employee_id,
         e.employee_name;


/* 15. High-Value Customers
Which query finds customers whose total transaction amount exceeds 200000? */

SELECT customer_id
FROM transactions
GROUP BY customer_id
HAVING SUM(amount) > 200000;


/* 16. Monthly Transaction Analysis
Which query correctly calculates total transaction amount by year and month? */

SELECT YEAR(transaction_date),
       MONTH(transaction_date),
       SUM(amount)
FROM transactions
GROUP BY YEAR(transaction_date),
         MONTH(transaction_date);


/* 17. Credit Transaction Analysis
Which query calculates total CREDIT amount for each customer? */

SELECT customer_id,
       SUM(amount)
FROM transactions
WHERE transaction_type = 'CREDIT'
GROUP BY customer_id;


/* 18. Customers With More Than 5 Transactions
Which query returns customers having more than 5 transactions? */

SELECT customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(*) > 5;


/* 19. Customer Transaction Report
Which query correctly displays customer name and transaction amount? */

SELECT c.customer_name,
       t.amount
FROM customers c
JOIN transactions t
    ON c.customer_id = t.customer_id;


/* 20. Customers Without Transactions
Which query finds customers who have no transactions? */

SELECT c.customer_id
FROM customers c
LEFT JOIN transactions t
    ON c.customer_id = t.customer_id
WHERE t.customer_id IS NULL;


/* 21. Highest Average Salary Department
Which query returns the department with the highest average salary? */

SELECT department_id,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;


/* 22. Minimum Salary by Department
Which query returns departments where the minimum salary is greater than 40000? */

SELECT department_id,
       MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) > 40000;


/* 23. Employees Joined During 2026
Which query correctly finds employees who joined during calendar year 2026? */

SELECT *
FROM employees
WHERE joining_date >= '2026-01-01'
AND joining_date < '2027-01-01';


/* 24. Most Recently Joined Employee
Which query returns the most recently joined employee? */

SELECT *
FROM employees
ORDER BY joining_date DESC
LIMIT 1;


/* 25. Employees Working on Multiple Projects
Which query finds employees assigned to at least 3 distinct projects? */

SELECT employee_id
FROM projects
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) >= 3;


/* 26. Employees With No Projects
Which query finds employees who are not assigned to any project? */

SELECT e.employee_id
FROM employees e
LEFT JOIN projects p
    ON e.employee_id = p.employee_id
WHERE p.project_id IS NULL;


/* 27. Highest-Cost Project
Which query returns the project with the highest project cost? */

SELECT *
FROM projects
ORDER BY project_cost DESC
LIMIT 1;


/* 28. Departments Including Zero Employees
Which query includes departments even when they have zero employees? */

SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id,
         d.department_name;


/* 29. Salary Range by Department
Which query calculates the salary range for each department? */

SELECT department_id,
       MAX(salary) - MIN(salary) AS salary_range
FROM employees
GROUP BY department_id;


/* 30. Multiple Group Conditions
Which query returns departments having at least 5 employees
and an average salary above 60000? */

SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 5
AND AVG(salary) > 60000;


/* 31. Salary Ranking Within Department
Which window function correctly ranks employees by salary within each department? */

SELECT employee_id,
       employee_name,
       department_id,
       salary,
       RANK() OVER (
           PARTITION BY department_id
           ORDER BY salary DESC
       ) AS salary_rank
FROM employees;


/* 32. Top 3 Salary Ranks Per Department
Which query returns employees whose salary is within the top 3
distinct salary ranks of their department? */

SELECT *
FROM (
    SELECT e.*,
           DENSE_RANK() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees e
) x
WHERE salary_rank <= 3;


/* 33. Running Salary Total
Which query calculates a running total of salary ordered by employee_id? */

SELECT employee_id,
       salary,
       SUM(salary) OVER (
           ORDER BY employee_id
       ) AS running_total
FROM employees;


/* 34. Department Average Alongside Employee Salary
Which query displays each employee's salary together with
the average salary of that employee's department? */

SELECT employee_id,
       salary,
       AVG(salary) OVER (
           PARTITION BY department_id
       ) AS department_avg
FROM employees;


/* 35. Salary Above Department Average
Which query finds employees earning more than their own department's average salary? */

SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);


/* 36. Latest Employee History Record
Which query returns the latest history record for each employee? */

SELECT *
FROM (
    SELECT h.*,
           ROW_NUMBER() OVER (
               PARTITION BY employee_id
               ORDER BY effective_date DESC
           ) AS rn
    FROM employee_history h
) x
WHERE rn = 1;


/* 37. CTE-Based High Salary Analysis
Which query correctly uses a CTE to return employees earning above 80000? */

WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 80000
)
SELECT *
FROM high_salary;


/* 38. Highest Average Salary Department
Which query returns the department having the highest average salary? */

SELECT department_id,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;


/* 39. Duplicate Employee Records
Which query identifies duplicate combinations of employee_id and joining_date? */

SELECT employee_id,
       joining_date
FROM employees
GROUP BY employee_id,
         joining_date
HAVING COUNT(*) > 1;


/* 40. Unique Row Number for Duplicate Records
Which expression assigns a sequential row number within each employee_id
based on joining_date? */

SELECT employee_id,
       joining_date,
       ROW_NUMBER() OVER (
           PARTITION BY employee_id
           ORDER BY joining_date
       ) AS row_num
FROM employees;


/* 41. Highest Transaction Per Customer
Which query returns the highest transaction amount for each customer? */

SELECT customer_id,
       MAX(amount) AS highest_transaction
FROM transactions
GROUP BY customer_id;


/* 42. Complete Highest Transaction Record
Which query returns the complete highest-value transaction record
for every customer? */

SELECT *
FROM (
    SELECT t.*,
           ROW_NUMBER() OVER (
               PARTITION BY customer_id
               ORDER BY amount DESC
           ) AS rn
    FROM transactions t
) x
WHERE rn = 1;


/* 43. Monthly Transaction Revenue
Which query calculates total transaction amount for each year and month? */

SELECT YEAR(transaction_date) AS yr,
       MONTH(transaction_date) AS mon,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY YEAR(transaction_date),
         MONTH(transaction_date);


/* 44. Monthly Customer Ranking
Which window expression ranks customers by their monthly
transaction total within each year/month? */

SELECT customer_id,
       YEAR(transaction_date) AS yr,
       MONTH(transaction_date) AS mon,
       SUM(amount) AS total_amount,
       RANK() OVER (
           PARTITION BY YEAR(transaction_date),
                        MONTH(transaction_date)
           ORDER BY SUM(amount) DESC
       ) AS customer_rank
FROM transactions
GROUP BY customer_id,
         YEAR(transaction_date),
         MONTH(transaction_date);


/* 45. Running Transaction Total Per Customer
Which query calculates a running transaction total separately for each customer? */

SELECT customer_id,
       transaction_date,
       amount,
       SUM(amount) OVER (
           PARTITION BY customer_id
           ORDER BY transaction_date
       ) AS running_total
FROM transactions;


/* 46. Cumulative Project Cost
Which query calculates cumulative project cost ordered by project start date? */

SELECT project_id,
       start_date,
       project_cost,
       SUM(project_cost) OVER (
           ORDER BY start_date
       ) AS cumulative_cost
FROM projects;


/* 47. Previous Transaction Amount
Which query gets the previous transaction amount for each customer? */

SELECT customer_id,
       transaction_date,
       amount,
       LAG(amount) OVER (
           PARTITION BY customer_id
           ORDER BY transaction_date
       ) AS previous_amount
FROM transactions;


/* 48. Next Transaction Amount
Which query gets the next transaction amount for each customer? */

SELECT customer_id,
       transaction_date,
       amount,
       LEAD(amount) OVER (
           PARTITION BY customer_id
           ORDER BY transaction_date
       ) AS next_amount
FROM transactions;


/* 49. Transaction Data Quality Check
Which condition identifies transactions with a missing customer,
missing amount, or negative amount? */

SELECT *
FROM transactions
WHERE amount IS NULL
OR customer_id IS NULL
OR amount < 0;


/* 50. Top 2 Salary Ranks Per Department Including Ties
Which query returns employees in the top 2 salary ranks
of each department, including ties? */

SELECT *
FROM (
    SELECT e.*,
           DENSE_RANK() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS rnk
    FROM employees e
) x
WHERE rnk <= 2;



























