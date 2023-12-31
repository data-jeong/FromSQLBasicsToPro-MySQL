-- 급여에 따른 급여 등급 분류
SELECT 
    EmployeeID,
    Name,
    Salary,
    CASE 
        WHEN Salary >= 60000 THEN 'High'
        WHEN Salary BETWEEN 40000 AND 59999 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryGrade
FROM 
    Employees;

