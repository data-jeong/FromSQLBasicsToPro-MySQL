-- 예제 데이터베이스 및 테이블 생성
USE TransactionDB;

CREATE TABLE Inventory (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(100),
    Quantity INT
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    ItemID INT,
    OrderQuantity INT,
    FOREIGN KEY (ItemID) REFERENCES Inventory(ItemID)
);

-- 임시 데이터 삽입
INSERT INTO Inventory (ItemName, Quantity) VALUES 
('Laptop', 10),
('Smartphone', 20);

-- 데드락 시뮬레이션
-- 두 개의 별도 세션에서 다음 쿼리를 실행
-- 세션 1:
BEGIN;
UPDATE Inventory SET Quantity = Quantity - 1 WHERE ItemName = 'Laptop';
-- 세션 2:
BEGIN;
UPDATE Inventory SET Quantity = Quantity - 1 WHERE ItemName = 'Smartphone';
-- 세션 1:
INSERT INTO Orders (ItemID, OrderQuantity) VALUES (2, 1); -- 이 시점에서 데드락 발생 가능
COMMIT;
-- 세션 2:
INSERT INTO Orders (ItemID, OrderQuantity) VALUES (1, 1);
COMMIT;

