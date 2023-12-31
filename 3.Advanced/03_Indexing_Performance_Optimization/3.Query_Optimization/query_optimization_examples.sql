-- 예제 데이터베이스 및 테이블 생성
CREATE DATABASE IF NOT EXISTS QueryOptimizationDB;
USE QueryOptimizationDB;

CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL
);

-- 임시 데이터 삽입
INSERT INTO Sales (ProductID, SaleDate, Quantity, TotalAmount) VALUES 
(1, '2023-01-01', 2, 200.00),
(2, '2023-01-02', 1, 150.00),
(3, '2023-01-03', 3, 300.00);

-- 쿼리 최적화 예제
-- 1. WHERE 절 최적화
EXPLAIN SELECT * FROM Sales WHERE ProductID = 1 AND Quantity > 1;

-- 2. JOIN 최적화
-- 다른 테이블과 조인할 경우 인덱스를 활용하여 최적화
-- 예를 들어, Products 테이블을 생성하고 Sales 테이블과 조인하는 경우

-- 3. 집계 함수 최적화
-- GROUP BY와 같은 집계 함수를 사용할 때 인덱스 활용 및 성능 분석
EXPLAIN SELECT ProductID, SUM(TotalAmount) FROM Sales GROUP BY ProductID;

