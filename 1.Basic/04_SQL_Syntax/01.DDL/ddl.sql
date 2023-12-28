-- 테이블 생성
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- 테이블 구조 변경 (새로운 열 추가)
ALTER TABLE Employees
ADD Email VARCHAR(100);

-- 테이블 삭제
DROP TABLE Employees;
