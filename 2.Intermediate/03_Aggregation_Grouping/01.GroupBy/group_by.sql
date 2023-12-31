-- 제품별 총 판매량 계산
SELECT 
    Product,
    SUM(Amount) AS TotalSales
FROM 
    Sales
GROUP BY 
    Product;

