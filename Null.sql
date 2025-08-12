-- 1. Display students with marks between 70 and 90
SELECT * FROM students10
WHERE marks BETWEEN 70 AND 90;

-- 2. List students aged between 20 and 22
SELECT * FROM students10
WHERE age BETWEEN 20 AND 22;

-- 3. Find students whose name starts with 'P'
SELECT * FROM students10
WHERE name LIKE 'P%';

-- 4. Find students whose city contains 'ai'
SELECT * FROM students10
WHERE city LIKE '%ai%';

-- 5. Find names where the second character is 'r'
SELECT * FROM students10
WHERE name LIKE '_r%';

-- 6. Show top 3 students with highest marks
SELECT * FROM students10
ORDER BY marks DESC
LIMIT 3;

-- 7. Show students who have a scholarship
SELECT * FROM students10
WHERE scholarship IS NOT NULL;

-- 8. Show students only if there is at least one student from 'Delhi'
SELECT * FROM students10
WHERE EXISTS (SELECT 1 FROM students10 WHERE city = 'Delhi');

-- 9. Show students in 'Math' course AND age > 21
SELECT * FROM students10
WHERE course = 'Math' AND age > 21;

-- 10. Show students in 'Science' OR 'English' course
SELECT * FROM students10
WHERE course IN ('Science', 'English');

-- 11. Show students NOT from 'Mumbai'
SELECT * FROM students10
WHERE city <> 'Mumbai';

-- 12. Show students who don’t have a scholarship
SELECT * FROM students10
WHERE scholarship IS NULL;

-- 13. Replace NULL scholarship with 0 using IFNULL
SELECT student_id, name, course, marks, age, city, IFNULL(scholarship, 0) AS scholarship
FROM students10;

-- 14. Replace NULL scholarship with 0 using COALESCE
SELECT student_id, name, course, marks, age, city, COALESCE(scholarship, 0) AS scholarship
FROM students10;
