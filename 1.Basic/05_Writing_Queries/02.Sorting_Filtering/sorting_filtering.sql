-- 정렬: ORDER BY
SELECT * FROM Employees ORDER BY Salary DESC;

-- 그룹화 및 필터링: GROUP BY, HAVING
SELECT Department, AVG(Salary) AS AverageSalary 
FROM Employees 
GROUP BY Department 
HAVING AVG(Salary) > 60000;
