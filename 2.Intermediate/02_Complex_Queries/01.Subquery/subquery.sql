-- 부서별 최대 급여 계산
SELECT 
    Department,
    (SELECT MAX(Salary) FROM Employees WHERE Department = Departments.Department) AS MaxSalary
FROM 
    Departments;

