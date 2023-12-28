-- 연산자 예제
SELECT * FROM Employees WHERE Salary > 50000 AND Department = 'IT';
SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 80000;
SELECT * FROM Employees WHERE Department IN ('Engineering', 'IT');
SELECT * FROM Employees WHERE Name LIKE 'A%';
SELECT * FROM Employees WHERE Salary <> 60000;
