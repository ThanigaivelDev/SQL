CREATE DATABASE emp;
USE emp;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Employees (emp_id, name, dept_id) VALUES
(1, 'Ravi', 101),
(2, 'Priya', 102),
(3, 'Karan', 101),
(4, 'Anjali', 103),
(5, 'Manish', NULL);

INSERT INTO Departments (dept_id, dept_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

SELECT e.emp_id, e.name, d.dept_name
FROM Employees e
INNER JOIN Departments d
    ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

SELECT d.dept_id, d.dept_name
FROM Departments d
LEFT JOIN Employees e
    ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

SELECT e.name, d.dept_name
FROM Employees e
CROSS JOIN Departments d;

SELECT e.name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
    ON e.dept_id = d.dept_id
UNION
SELECT e.name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d
    ON e.dept_id = d.dept_id;

SELECT e.emp_id, e.name
FROM Employees e
LEFT JOIN Departments d
    ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL;
