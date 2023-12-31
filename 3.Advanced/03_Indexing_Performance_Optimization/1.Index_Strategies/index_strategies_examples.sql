-- 예제 데이터베이스 및 테이블 생성
CREATE DATABASE IF NOT EXISTS IndexStrategiesDB;
USE IndexStrategiesDB;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL
);

-- 임시 데이터 삽입
INSERT INTO Products (ProductName, Category, Price) VALUES 
('Laptop', 'Electronics', 1200.00),
('Smartphone', 'Electronics', 800.00),
('Chair', 'Furniture', 150.00),
('Desk', 'Furniture', 300.00);

-- 단일 컬럼 인덱스 생성
CREATE INDEX idx_category ON Products (Category);

-- 복합 컬럼 인덱스 생성
CREATE INDEX idx_name_price ON Products (ProductName, Price);

-- 인덱스 활용 쿼리 예제
EXPLAIN SELECT * FROM Products WHERE Category = 'Electronics';
EXPLAIN SELECT * FROM Products WHERE ProductName = 'Laptop' AND Price > 1000;

