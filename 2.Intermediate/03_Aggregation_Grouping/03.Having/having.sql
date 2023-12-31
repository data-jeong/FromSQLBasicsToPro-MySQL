-- 특정 조건을 충족하는 판매 그룹 찾기
SELECT 
    Product,
    SUM(Amount) AS TotalSales
FROM 
    Sales
GROUP BY 
    Product
HAVING 
    SUM(Amount) > 1000;

