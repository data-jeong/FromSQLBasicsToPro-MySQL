-- 예제 데이터베이스 및 테이블 생성
CREATE DATABASE ExampleDB;
USE ExampleDB;

-- 예제 테이블1 생성
CREATE TABLE Table1 (
    id INT PRIMARY KEY,
    value VARCHAR(50)
);

-- 예제 테이블2 생성
CREATE TABLE Table2 (
    id INT PRIMARY KEY,
    description VARCHAR(100)
);

-- 테이블1에 데이터 삽입
INSERT INTO Table1 (id, value) VALUES
(1, 'Value1'),
(2, 'Value2'),
(3, 'Value3');

-- 테이블2에 데이터 삽입
INSERT INTO Table2 (id, description) VALUES
(2, 'Description2'),
(3, 'Description3'),
(4, 'Description4');

