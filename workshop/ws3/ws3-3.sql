# Homework ws3-3.sql
SELECT student_id
FROM Student s
GROUP BY student_id
HAVING COUNT(DISTINCT professor_key) = (SELECT COUNT(*) FROM Professor);
