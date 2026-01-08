CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE Products(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
price DECIMAL(10,2)
);
INSERT INTO products VALUES
(1,'Laptop',75000),
(2,'Mobile',40000),
(3,'Headphones',1000),
(4,'Smart Watch',5000),
(5,'Ipad',28000);
SELECT * FROM products;

--ORDER BY & LIMIT--
SELECT product_name,price FROM products
ORDER BY price DESC
LIMIT 3;

--Aggregate Functions--
CREATE TABLE Sales(
sale_id INT PRIMARY KEY,
product_name VARCHAR(50),
quantity INT,
total_amount DECIMAL(10,2)
);
INSERT INTO sales VALUES
(1, 'Laptop', 2, 150000),
(2, 'Mobile', 3, 135000),
(3, 'Tablet', 1, 28000),
(4, 'Headphones', 5, 15000),
(5, 'Smart Watch', 2, 30000);
SELECT * FROM sales;
--Total number of sales--
SELECT COUNT(*)AS total_sales FROM sales;
--Total Sales Amount--
SELECT SUM(total_amount)AS total_Revenue FROM sales;
--Average sales amount--
SELECT AVG(total_amount)AS Average_Sale From Sales;
--Highest sales amount--
SELECT MAX(total_amount) AS Highest_Sale FROM Sales;
--Lowest sales amount--
SELECT MIN(total_amount)AS Lowest_sale FROM Sales;

--GROUP BY & HAVING--
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50)
);
INSERT INTO Employees VALUES
(1, 'Abi', 'HR'),
(2, 'Ravi', 'HR'),
(3, 'Priya', 'HR'),
(4, 'Kumar', 'HR'),
(5, 'Meena', 'HR'),
(6, 'Suresh', 'HR'),
(7, 'Divya', 'HR'),
(8, 'Arun', 'HR'),
(9, 'Kavi', 'HR'),
(10, 'Nisha', 'HR'),
(11, 'Vijay', 'HR'),
(12, 'Anu', 'IT'),
(13, 'Raj', 'IT'),
(14, 'Poo', 'IT');
SELECT * FROM Employees;
Use ecommerce;
SELECT department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 10;
