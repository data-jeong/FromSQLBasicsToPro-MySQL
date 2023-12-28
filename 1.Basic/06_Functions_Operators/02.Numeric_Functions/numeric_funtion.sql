-- 수치 함수 예제
SELECT ROUND(Salary, -3) AS RoundedSalary FROM Employees;
SELECT ABS(Salary - 60000) AS SalaryDifference FROM Employees;
SELECT SUM(Salary) FROM Employees;
SELECT AVG(Salary) FROM Employees;
SELECT COUNT(*) FROM Employees;
