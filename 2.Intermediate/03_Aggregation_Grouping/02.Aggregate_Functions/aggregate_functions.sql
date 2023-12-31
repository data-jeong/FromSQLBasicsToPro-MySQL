-- 총 판매량, 평균 판매량, 최대 및 최소 판매량 계산
SELECT 
    MAX(Amount) AS MaxSale,
    MIN(Amount) AS MinSale,
    AVG(Amount) AS AverageSale,
    SUM(Amount) AS TotalSales,
    COUNT(*) AS NumberOfSales
FROM 
    Sales;

