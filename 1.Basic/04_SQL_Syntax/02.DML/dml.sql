-- 데이터 삽입
INSERT INTO Employees (EmployeeID, Name, Position, Salary)
VALUES (1, 'John Doe', 'Manager', 75000.00);

-- 데이터 조회
SELECT * FROM Employees;

-- 데이터 업데이트
UPDATE Employees
SET Salary = 80000.00
WHERE EmployeeID = 1;

-- 데이터 삭제
DELETE FROM Employees
WHERE EmployeeID = 1;
