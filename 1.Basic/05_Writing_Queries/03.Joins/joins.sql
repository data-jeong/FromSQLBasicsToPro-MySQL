-- INNER JOIN
SELECT Employees.Name, Departments.DepartmentName 
FROM Employees 
INNER JOIN Departments ON Employees.Department = Departments.DepartmentName;

-- LEFT JOIN
SELECT Employees.Name, Departments.DepartmentName 
FROM Employees 
LEFT JOIN Departments ON Employees.Department = Departments.DepartmentName;

-- FULL OUTER JOIN (MySQL에서는 FULL OUTER JOIN이 직접적으로 지원되지 않으므로 UNION을 사용)
SELECT Employees.Name, Departments.DepartmentName 
FROM Employees 
LEFT JOIN Departments ON Employees.Department = Departments.DepartmentName
UNION
SELECT Employees.Name, Departments.DepartmentName 
FROM Employees 
RIGHT JOIN Departments ON Employees.Department = Departments.DepartmentName;
