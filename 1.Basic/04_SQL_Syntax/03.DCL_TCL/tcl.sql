-- 트랜잭션 시작
START TRANSACTION;

-- 데이터 업데이트
UPDATE Accounts
SET balance = balance - 1000
WHERE account_number = 123;

UPDATE Accounts
SET balance = balance + 1000
WHERE account_number = 456;

-- 트랜잭션 커밋
COMMIT;

-- 롤백
ROLLBACK;
