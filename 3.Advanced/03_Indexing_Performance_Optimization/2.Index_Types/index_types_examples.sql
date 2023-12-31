-- 예제 데이터베이스 및 테이블 생성
CREATE DATABASE IF NOT EXISTS IndexTypesDB;
USE IndexTypesDB;

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL
);

-- 임시 데이터 삽입
INSERT INTO Employees (EmployeeName, Department, Salary) VALUES 
('John Doe', 'IT', 70000),
('Jane Smith', 'HR', 65000),
('Alice Johnson', 'Finance', 80000),
('Bob Brown', 'IT', 55000);

-- B-tree 인덱스 생성
CREATE INDEX idx_btree ON Employees (Department);

-- Full-text 인덱스 생성 (MySQL의 경우 InnoDB 테이블에서 가능)
CREATE FULLTEXT INDEX idx_fulltext ON Employees (EmployeeName);

-- 인덱스 활용 쿼리 예제
-- B-tree 인덱스 활용
SELECT * FROM Employees WHERE Department = 'IT';

-- Full-text 인덱스 활용
SELECT * FROM Employees WHERE MATCH(EmployeeName) AGAINST('John Doe');

