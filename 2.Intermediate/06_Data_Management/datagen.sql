-- 데이터 관리 예제를 위한 데이터베이스 및 테이블 생성
CREATE DATABASE ExampleDB;
USE ExampleDB;

-- 트랜잭션 관리 실습을 위한 계좌 테이블
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(100),
    Balance DECIMAL(10, 2)
);

-- 뷰 및 인덱싱 실습을 위한 판매 테이블
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    Product VARCHAR(100),
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE,
    Department VARCHAR(50)
);

-- Accounts 테이블에 데이터 삽입
INSERT INTO Accounts (AccountID, AccountHolder, Balance) VALUES
(1, 'John Doe', 1000.00),
(2, 'Jane Smith', 1500.00),
(3, 'Alice Johnson', 1200.00);

-- Sales 테이블에 데이터 삽입
INSERT INTO Sales (SaleID, EmployeeID, Product, SaleAmount, SaleDate, Department) VALUES
(1, 101, 'Laptop', 1200.00, '2023-01-01', 'Sales'),
(2, 102, 'Smartphone', 800.00, '2023-01-02', 'Sales'),
(3, 103, 'Tablet', 450.00, '2023-01-03', 'IT'),
(4, 104, 'Monitor', 300.00, '2023-01-04', 'IT'),
(5, 105, 'Keyboard', 150.00, '2023-01-05', 'HR');

