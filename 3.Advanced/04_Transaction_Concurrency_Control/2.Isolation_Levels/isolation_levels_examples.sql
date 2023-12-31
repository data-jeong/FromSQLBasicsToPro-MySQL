-- 예제 데이터베이스 및 테이블 생성
USE TransactionDB;

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    OrderDate DATE
);

-- 임시 데이터 삽입
INSERT INTO Orders (ProductName, Quantity, OrderDate) VALUES 
('Laptop', 1, '2023-01-01'),
('Smartphone', 2, '2023-01-02');

-- 격리 수준 설정 예제
-- READ UNCOMMITTED 격리 수준 설정
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN;
SELECT * FROM Orders WHERE ProductName = 'Laptop';
-- 다른 트랜잭션에서의 변경 사항이 반영될 수 있음
COMMIT;

-- READ COMMITTED 격리 수준 설정
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN;
SELECT * FROM Orders WHERE ProductName = 'Smartphone';
-- 다른 트랜잭션에서 커밋된 변경 사항만 반영됨
COMMIT;

-- REPEATABLE READ 격리 수준 설정
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN;
SELECT * FROM Orders WHERE ProductName = 'Laptop';
-- 처음 읽은 이후의 다른 트랜잭션에서의 변경 사항은 반영되지 않음
COMMIT;

-- SERIALIZABLE 격리 수준 설정
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN;
SELECT * FROM Orders;
-- 다른 트랜잭션에서는 이 테이블에 대한 읽기 또는 쓰기가 불가능
COMMIT;

