-- IT 부서와 Sales 부서 직원의 목록 (UNION)
SELECT Name FROM Employees WHERE Department = 'IT'
UNION
SELECT Name FROM Employees WHERE Department = 'Sales';

-- IT 부서에만 있는 직원의 목록 (EXCEPT)
SELECT Name FROM Employees WHERE Department = 'IT'
EXCEPT
SELECT Name FROM Employees WHERE Department = 'Sales';

