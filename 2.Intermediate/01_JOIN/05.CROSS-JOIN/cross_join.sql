-- CROSS JOIN 예제
SELECT 
    Table1.id,
    Table1.value,
    Table2.description
FROM 
    Table1
CROSS JOIN 
    Table2;

