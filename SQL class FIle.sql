create schema employee;
use employee;
create table employees( emp_id int primary Key, name varchar(100), dept_name varchar(100), salary decimal(10,2), age int, gender varchar(10));
Insert into employees(emp_id,name,dept_name,salary,age,gender) values(101,'Saravanan','ECE',100000,21,'MALE');
Insert into employees(emp_id,name,dept_name,salary,age,gender) values(102,'VelKrishnaraja','ECE',100000,21,'MALE');
Insert into employees(emp_id,name,dept_name,salary,age,gender) values(103,'Dd','ECE',100000,21,'MALE');
Insert into employees(emp_id,name,dept_name,salary,age,gender) values(104,'Praveen D','ECE',100000,21,'MALE');
Insert into employee.employees(emp_id,name,dept_name,salary,age,gender) values(105,'Divya','IT',60000,20,'FEMALE');
Insert into employee.employees(emp_id,name,dept_name,salary,age,gender) values(106,'Maran','Finance',65000,25,'MALE');
Insert into employee.employees(emp_id,name,dept_name,salary,age,gender) values(107,'Bharani','CSE',62000,21,'MALE');
Insert into employee.employees(emp_id,name,dept_name,salary,age,gender) values(108,'Aaryan','IT',60000,21,'MALE');
Insert into employee.employees(emp_id,name,dept_name,salary,age,gender) values(109,'Sagar','CSE',67000,19,'MALE');
Insert into employee.employees(emp_id,name,dept_name,salary,age,gender) values(110,'Vishva','ECE',60000,19,'MALE');
Select name,salary from employee.employees;
select * from employee.employees where dept_name='IT';
select * from employee.employees order by salary Desc;
select name from employee.employees order by name ASC;
select dept_name, SUM(salary) As totalsalary From employees GROUP BY dept_name;
select dept_name, AVG(age) AS Average FROM employees GROUP BY dept_name;
select dept_name, count(*) AS emp_count From employees GROUP BY dept_name;
select name, dept_name,salary from employees;
SELECT dept_name, MAX(salary) AS max_salary FROM employees GROUP BY dept_name;
-- Products Table
create schema Products;
use Products;
CREATE TABLE Products( product_id INT PRIMARY KEY, product_name VARCHAR(100),catagory VARCHAR(50),unit_price DECIMAL(10,2));
INSERT INTO Products (product_id, product_name, catagory, unit_price) VALUES (101,'Laptop','Electronics',500.00);
INSERT INTO Products (product_id, product_name, catagory, unit_price) VALUES (102,'Tablet','Electronics',300.00);
INSERT INTO Products (product_id, product_name, catagory, unit_price) VALUES (103,'Mobile','Electronics',30.00);
INSERT INTO Products (product_id, product_name, catagory, unit_price) VALUES (104,'Pendrive','Electronics',38.00);
INSERT INTO Products (product_id, product_name, catagory, unit_price) VALUES (105,'Mouse','Electronics',15.00);
SELECT * FROM products;
select product_name, unit_price from products;
SELECT * FROM products where catagory='Electronics';
SELECT product_id,product_name from products where unit_price>100;
SELECT AVG(unit_price) AS unit_priceavg FROM products;
select product_name, max(unit_price) as Max_price from products group by product_name limit 2 offset 2;
select product_name, unit_price from products order by unit_price desc;
SELECT product_name, unit_price FROM products WHERE unit_price= (SELECT MAX(unit_price) FROM products);
SELECT product_name, unit_price FROM products ORDER BY unit_price DESC;
SELECT product_name, unit_price FROM products WHERE unit_price BETWEEN 20 and 600;
select product_name, catagory from products order by catagory asc;
-- Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Sales (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);
SELECT * FROM products.sales;
SELECT sale_id, sale_date FROM Sales;
SELECT *FROM Sales WHERE total_price > 100;
SELECT sale_id, total_price FROM Sales WHERE sale_date = '2024-01-03';
SELECT SUM(quantity_sold) AS total_quantity_sold FROM Sales;
SELECT sale_id, product_id, total_price FROM Sales WHERE quantity_sold > 4;
SELECT AVG(total_price) AS average_total_price FROM Sales;
