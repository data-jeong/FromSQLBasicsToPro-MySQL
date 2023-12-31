-- 예제 데이터 생성
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    TotalSaleAmount DECIMAL
);

-- 임시 데이터 삽입
INSERT INTO Sales (SaleID, EmployeeID, TotalSaleAmount)
VALUES 
(1, 1, 500.00),
(2, 1, 300.00),
(3, 2, 400.00),
(4, 2, 600.00),
(5, 3, 200.00);

-- 윈도우 함수 예제
SELECT EmployeeID,
       TotalSaleAmount,
       SUM(TotalSaleAmount) OVER(PARTITION BY EmployeeID) AS TotalSalesByEmployee
FROM Sales;

