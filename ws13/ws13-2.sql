WITH RECURSIVE t_1 AS(
    SELECT DISTINCT E.student_id 
      FROM Exam E,
           (SELECT exam_id,
                   MIN(score) AS min_score,
                   MAX(score) AS max_score 
            FROM Exam
            GROUP BY exam_id) AS T_1
    WHERE E.exam_id=T_1.exam_id 
      AND E.score IN (T_1.min_score,T_1.max_score)
)
# select * from t_1
SELECT DISTINCT E.student_id,
       S.student_name 
  FROM Exam E, Student S
 WHERE E.student_id NOT IN 
          (SELECT student_id FROM t_1) 
   AND E.student_id = S.student_id
ORDER BY E.student_id
;
