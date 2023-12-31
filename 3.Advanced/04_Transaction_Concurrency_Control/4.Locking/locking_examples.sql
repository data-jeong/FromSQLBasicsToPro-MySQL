-- 예제 데이터베이스 및 테이블 생성
USE TransactionDB;

-- 배타적 락 (Exclusive Lock) 예제
-- 배타적 락은 트랜잭션이 데이터를 변경하는 동안 다른 트랜잭션이 해당 데이터에 접근하지 못하도록 합니다.
BEGIN TRANSACTION;
SELECT * FROM Inventory WHERE ItemName = 'Laptop' FOR UPDATE;
UPDATE Inventory SET Quantity = Quantity - 1 WHERE ItemName = 'Laptop';
COMMIT;

-- 공유 락 (Shared Lock) 예제
-- 공유 락은 트랜잭션이 데이터를 읽는 동안 다른 트랜잭션이 해당 데이터를 변경하지 못하도록 합니다.
BEGIN TRANSACTION;
SELECT * FROM Inventory WHERE ItemName = 'Smartphone' LOCK IN SHARE MODE;
-- 이 상태에서 다른 트랜잭션이 'Smartphone'에 대한 변경을 시도하면 대기 상태에 놓임
COMMIT;

