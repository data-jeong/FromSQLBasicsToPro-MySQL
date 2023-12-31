-- 트랜잭션 관리 예제
BEGIN TRANSACTION;

UPDATE Accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 2;

-- 데이터 일관성을 확인 후 트랜잭션 완료
COMMIT;

-- 문제가 발생했을 경우 롤백
ROLLBACK;

