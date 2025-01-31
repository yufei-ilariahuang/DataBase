# Homework ws2-3.sql
SELECT 
    s1.employee_id,
    s1.product_id,
    s1.sales
FROM Sales s1
WHERE (s1.sales, s1.product_id) = (
    SELECT sales, MIN(product_id)
    FROM Sales s2
    WHERE s2.employee_id = s1.employee_id
    GROUP BY sales
    ORDER BY sales DESC
    LIMIT 1
)
ORDER BY s1.employee_id;