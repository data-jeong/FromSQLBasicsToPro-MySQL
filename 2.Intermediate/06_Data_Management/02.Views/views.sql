-- 뷰 생성 및 사용 예제
CREATE VIEW SalesSummary AS
SELECT Department, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY Department;

-- 뷰를 사용한 쿼리
SELECT * FROM SalesSummary;

