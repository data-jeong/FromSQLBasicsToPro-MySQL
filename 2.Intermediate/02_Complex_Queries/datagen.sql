-- 복잡한 쿼리 예제를 위한 데이터베이스 및 테이블 생성
CREATE DATABASE ExampleDB;
USE ExampleDB;

-- 예제 테이블1 생성
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(100),
    Salary INT
);

-- 예제 테이블2 생성
CREATE TABLE Departments (
    Department VARCHAR(100) PRIMARY KEY,
    Budget INT
);

-- Employees 테이블에 데이터 삽입
INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES
(1, 'John Doe', 'Sales', 50000),
(2, 'Jane Smith', 'HR', 60000),
(3, 'Alice Johnson', 'IT', 70000),
(4, 'Mike Brown', 'Sales', 55000);

-- Departments 테이블에 데이터 삽입
INSERT INTO Departments (Department, Budget) VALUES
('Sales', 200000),
('HR', 150000),
('IT', 300000);

