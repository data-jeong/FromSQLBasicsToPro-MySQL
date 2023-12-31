-- 고급 함수 예제를 위한 데이터베이스 및 테이블 생성
CREATE DATABASE ExampleDB;
USE ExampleDB;

-- 예제 테이블 생성
CREATE TABLE ExampleData (
    ID INT PRIMARY KEY,
    TextData VARCHAR(100),
    NumberData INT,
    DateData DATE
);

-- ExampleData 테이블에 데이터 삽입
INSERT INTO ExampleData (ID, TextData, NumberData, DateData) VALUES
(1, 'First', 10, '2023-01-01'),
(2, 'Second', 20, '2023-02-01'),
(3, 'Third', 30, '2023-03-01');

