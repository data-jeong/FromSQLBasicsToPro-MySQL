-- 윈도우 함수 예제
-- ROW_NUMBER, RANK, DENSE_RANK
SELECT 
    EmployeeID,
    Department,
    SaleAmount,
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY SaleAmount) AS RowNum,
    RANK() OVER (PARTITION BY Department ORDER BY SaleAmount) AS Rank,
    DENSE_RANK() OVER (PARTITION BY Department ORDER BY SaleAmount) AS DenseRank
FROM 
    Sales;

-- LEAD, LAG
SELECT 
    EmployeeID,
    Department,
    SaleAmount,
    LEAD(SaleAmount, 1) OVER (PARTITION BY Department ORDER BY SaleDate) AS NextSale,
    LAG(SaleAmount, 1) OVER (PARTITION BY Department ORDER BY SaleDate) AS PrevSale
FROM 
    Sales;

