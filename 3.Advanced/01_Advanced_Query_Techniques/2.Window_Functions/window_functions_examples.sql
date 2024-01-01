-- NTILE을 사용하여 직원을 성과 기준으로 4개의 그룹으로 나누기:
SELECT 
    EmployeeID, 
    SaleAmount, 
    NTILE(4) OVER (ORDER BY SaleAmount DESC) AS PerformanceTier
FROM Sales;


-- FIRST_VALUE와 LAST_VALUE를 사용하여 각 부서의 최고 및 최저 판매액 찾기:
SELECT 
    Department,
    SaleAmount,
    FIRST_VALUE(SaleAmount) OVER (PARTITION BY Department ORDER BY SaleAmount DESC) AS HighestSale,
    LAST_VALUE(SaleAmount) OVER (PARTITION BY Department ORDER BY SaleAmount DESC RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LowestSale
FROM Sales;

-- ROW_NUMBER를 사용하여 각 부서별로 최고 판매액을 올린 직원 찾기:
WITH RankedSales AS (
    SELECT 
        EmployeeID, 
        Department, 
        SaleAmount,
        ROW_NUMBER() OVER (PARTITION BY Department ORDER BY SaleAmount DESC) AS Rank
    FROM Sales
)
SELECT *
FROM RankedSales
WHERE Rank = 1;


