-- 예제 데이터 생성
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(50),
    ManagerID INT
);

-- 임시 데이터 삽입
INSERT INTO Employees (EmployeeID, Name, ManagerID)
VALUES 
(1, 'John Doe', NULL),
(2, 'Jane Smith', 1),
(3, 'Alice Johnson', 1),
(4, 'Bob Brown', 2);

-- 기본 CTE 예제
WITH ManagerCTE AS (
    SELECT EmployeeID, Name
    FROM Employees
    WHERE ManagerID IS NULL
)
SELECT E.Name, M.Name AS Manager
FROM Employees E
JOIN ManagerCTE M ON E.ManagerID = M.EmployeeID;

