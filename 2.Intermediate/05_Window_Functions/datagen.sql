-- 윈도우 함수 예제를 위한 데이터베이스 및 테이블 생성
CREATE DATABASE ExampleDB;
USE ExampleDB;

-- 예제 테이블 생성
CREATE TABLE Sales (
    EmployeeID INT,
    Department VARCHAR(50),
    SaleAmount INT,
    SaleDate DATE
);

-- Sales 테이블에 데이터 삽입
INSERT INTO Sales (EmployeeID, Department, SaleAmount, SaleDate) VALUES
(1, 'Sales', 1000, '2023-01-01'),
(2, 'Sales', 1100, '2023-01-02'),
(3, 'HR', 950, '2023-01-01'),
(4, 'HR', 1200, '2023-01-02'),
(5, 'IT', 1050, '2023-01-01'),
(6, 'IT', 1150, '2023-01-02');

