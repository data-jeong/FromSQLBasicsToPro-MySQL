-- 집계 및 그룹화 예제를 위한 데이터베이스 및 테이블 생성
CREATE DATABASE ExampleDB;
USE ExampleDB;

-- 예제 테이블 생성
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(100),
    Amount INT,
    SaleDate DATE
);

-- Sales 테이블에 데이터 삽입
INSERT INTO Sales (SaleID, Product, Amount, SaleDate) VALUES
(1, 'Laptop', 1000, '2023-01-01'),
(2, 'Laptop', 1500, '2023-01-02'),
(3, 'Smartphone', 500, '2023-01-02'),
(4, 'Laptop', 1200, '2023-01-03'),
(5, 'Smartphone', 700, '2023-01-03');

