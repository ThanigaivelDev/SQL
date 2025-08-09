CREATE TABLE Sales (
SaleID INT PRIMARY KEY,
Salesperson VARCHAR(50),
Region VARCHAR(50),
Product VARCHAR(50),
Quantity INT,
SaleAmount DECIMAL(10,2)
);
INSERT INTO Sales (SaleID, Salesperson, Region, Product, Quantity, SaleAmount) VALUES
(1, 'Alice', 'North', 'Laptop', 1, 1000.00),
(2, 'Bob', 'South', 'Mouse', 3, 75.00),
(3, 'Alice', 'North', 'Monitor', 2, 300.00),
(4, 'Charlie', 'East', 'Keyboard', 1, 50.00),
(5, 'Bob', 'South', 'Monitor', 1, 150.00),
(6, 'Alice', 'North', 'Mouse', 2, 50.00),
(7, 'Charlie', 'East', 'Laptop', 2, 2000.00),
(8, 'David', 'West', 'Laptop', 1, 1100.00),
(9, 'David', 'West', 'Mouse', 4, 100.00),
(10, 'Eve', 'South', 'Monitor', 3, 450.00),
(11, 'Eve', 'South', 'Keyboard', 2, 100.00),
(12, 'Eve', 'South', 'Mouse', 1, 25.00),
(13, 'Alice', 'North', 'Keyboard', 1, 60.00),
(14, 'Bob', 'South', 'Laptop', 1, 1200.00),
(15, 'Charlie', 'East', 'Mouse', 2, 50.00);
SELECT Salesperson, SUM(Quantity) AS TotalQuantitySold FROM Sales GROUP BY Salesperson;
select salesperson from sales where quantity >5;
SELECT Salesperson, COUNT(distinct Product) AS DistinctProductsSold FROM Sales GROUP BY Salesperson;
select region from sales where SaleAmount>1000;
select salesperson from sales where quantity >2;
SELECT Product, SUM(SaleAmount) AS total_sales FROM Sales GROUP BY Product HAVING SUM(SaleAmount) > 500;
SELECT Region, Product, SUM(Quantity) AS total_quantity FROM Sales GROUP BY Region, Product;
SELECT Salesperson FROM Sales GROUP BY Salesperson HAVING COUNT(DISTINCT Product) > 1;
SELECT Region, Product, AVG(Quantity) AS avg_quantity FROM Sales GROUP BY Region, Product HAVING AVG(Quantity) > 1;
SELECT Salesperson, SUM(SaleAmount) AS total_sales FROM Sales GROUP BY Salesperson HAVING SUM(SaleAmount) BETWEEN 500 AND 1500;
SELECT Product, SUM(Quantity) AS total_quantity FROM Sales GROUP BY Product HAVING SUM(Quantity) > 3;
SELECT DISTINCT Salesperson FROM Sales WHERE Product = 'Laptop';
SELECT Salesperson, Region, SUM(SaleAmount) AS total_sales FROM Sales GROUP BY Salesperson, Region HAVING SUM(SaleAmount) > 500;
SELECT Salesperson, Region FROM Sales GROUP BY Salesperson, Region HAVING COUNT(DISTINCT Product) >= 2;
SELECT Product FROM Sales GROUP BY Product HAVING COUNT(DISTINCT Region) > 1;
SELECT Product, COUNT(*) AS sales_count FROM Sales GROUP BY Product HAVING COUNT(*) >= 2;
SELECT Region, Salesperson, SUM(Quantity) AS total_quantity FROM Sales GROUP BY Region, Salesperson;
SELECT Salesperson, COUNT(*) AS transaction_count, SUM(SaleAmount) AS total_sales FROM Sales GROUP BY Salesperson HAVING COUNT(*) > 3 AND SUM(SaleAmount) > 1000;
SELECT Region, AVG(SaleAmount) AS avg_sales FROM Sales GROUP BY Region HAVING AVG(SaleAmount) > 200;
SELECT Region, Product, SUM(Quantity) AS total_quantity FROM Sales GROUP BY Region, Product HAVING SUM(Quantity) > 3;
