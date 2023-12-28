-- 기본 구성 요소 실습 파일

-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS ExampleDB;

-- 데이터베이스 사용
USE ExampleDB;

-- 테이블 생성
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- 레코드 삽입
INSERT INTO Customers (FirstName, LastName, Email) 
VALUES ('John', 'Doe', 'john.doe@example.com'),
       ('Jane', 'Doe', 'jane.doe@example.com');
