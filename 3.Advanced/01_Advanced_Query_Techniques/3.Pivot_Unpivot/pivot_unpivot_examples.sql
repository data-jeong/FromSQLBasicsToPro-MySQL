-- 예제 데이터 생성
CREATE TABLE MonthlySales (
    Year INT,
    Month INT,
    SalesAmount DECIMAL
);

-- 임시 데이터 삽입
INSERT INTO MonthlySales (Year, Month, SalesAmount)
VALUES 
(2023, 1, 1000.00),
(2023, 2, 1500.00),
(2023, 3, 1200.00);

-- 피벗 예제
SELECT Year, 
       [1] AS JanSales, 
       [2] AS FebSales, 
       [3] AS MarSales
FROM 
   (SELECT Year, Month, SalesAmount 
    FROM MonthlySales) AS SourceTable
PIVOT
   (SUM(SalesAmount) FOR Month IN ([1], [2], [3])) AS PivotTable;

