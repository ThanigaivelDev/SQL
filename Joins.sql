create schema school;
use school;
DROP table students;
CREATE TABLE students(
std_id int primary key,
 first_name varchar(50),
 last_name varchar(50),
 course_id int);
create table courses(
course_id int primary key, 
course_name varchar(50), 
department varchar(50), 
Credits int
);
insert into students values
(1,'Alice','Johnson',101),
(2,'Bob','Seith',102),
(3,'Charlie','Brown',103),
(4,'David','Williams',101),
(5,'Eve','Taylor',Null),
(6,'Frank','Moore',104);
insert into courses values
(101,'Mathematics','Science',4),
(102,'Physiscs','Science',3),
(103,'History','Arts',2),
(104,'Computer Science','Technology',1),
(105,'chemistry','Science',3);
-- Q1. Show each student's first name and their course name.
select first_name, course_name FROM students INNER JOIN courses ON students.course_id = courses.course_id;
-- Q2. Display all students with their course name and department.
SELECT CONCAT(first_name,' ',last_name) AS full_name, department FROM students INNER JOIN courses ON students.course_id = courses.course_id;
-- Q3. Show course names and student full names.
SELECT CONCAT(s.first_name, s.last_name) AS full_name, course_name FROM students s INNER JOIN courses c ON s.course_id = c.course_id;
-- Q4. List students whose course credits are greater than 3.
SELECT s.first_name FROM students s INNER JOIN courses c ON s.course_id = c.course_id WHERE c.credits>3;
-- Q5. Find students enrolled in the 'Science' department
SELECT s.first_name,c.department FROM students s INNER JOIN courses c ON s.course_id = c.course_id WHERE c.department='Science';
-- Q6. Show all students with both first and last names along with course name
SELECT s.first_name,s.last_name,c.course_name FROM students s INNER JOIN courses c ON s.course_id = c.course_id;
-- Q7. Display student names and course names in alphabetical order by student. 
SELECT s.first_name,c.course_name FROM students s INNER JOIN courses c ON s.course_id = c.course_id order by s.first_name;
-- Q8. Show student names and course names where credits = 3. 
SELECT s.first_name,c.course_name FROM students s INNER JOIN courses c ON c.course_id = s.course_id WHERE c.credits=3;
-- Q9. Find all students in the 'Arts' department.
SELECT s.first_name FROM students s INNER JOIN courses c ON c.course_id=s.course_id WHERE c.department ='Arts';
-- Q10. Show all student-course pairs ordered by course name. 
SELECT s.first_name, c.course_name FROM students s INNER JOIN courses c ON s.course_id = c.course_id ORDER BY c.course_name;
