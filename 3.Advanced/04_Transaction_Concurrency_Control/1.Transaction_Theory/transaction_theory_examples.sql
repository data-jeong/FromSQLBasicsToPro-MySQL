-- 예제 데이터베이스 및 테이블 생성
CREATE DATABASE IF NOT EXISTS TransactionDB;
USE TransactionDB;

CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    AccountHolder VARCHAR(100),
    Balance DECIMAL
);

-- 임시 데이터 삽입
INSERT INTO Accounts (AccountHolder, Balance) VALUES 
('John Doe', 1000.00),
('Jane Smith', 2000.00);

-- 트랜잭션 예제
-- John Doe 계정에서 Jane Smith 계정으로 이체
BEGIN;

UPDATE Accounts SET Balance = Balance - 200 WHERE AccountHolder = 'John Doe';
UPDATE Accounts SET Balance = Balance + 200 WHERE AccountHolder = 'Jane Smith';

COMMIT;

-- 결과 확인
SELECT * FROM Accounts;

