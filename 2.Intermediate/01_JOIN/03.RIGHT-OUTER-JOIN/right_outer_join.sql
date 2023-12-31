-- RIGHT OUTER JOIN 예제
SELECT 
    Table1.id,
    Table1.value,
    Table2.description
FROM 
    Table1
RIGHT OUTER JOIN 
    Table2 
ON 
    Table1.id = Table2.id;

