-- SQL 기초 실습 파일

-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS SampleDB;

-- 데이터베이스 사용
USE SampleDB;

-- 테이블 생성
CREATE TABLE IF NOT EXISTS Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- 데이터 삽입
INSERT INTO Employees (ID, Name, Position, Salary) 
VALUES (1, 'Alice', 'Developer', 60000.00),
       (2, 'Bob', 'Designer', 55000.00);

-- 기본 쿼리
SELECT * FROM Employees;
