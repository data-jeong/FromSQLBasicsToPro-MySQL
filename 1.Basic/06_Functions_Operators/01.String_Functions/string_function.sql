-- 문자열 함수 예제
SELECT CONCAT(Name, ' - ', Department) AS Concatenated FROM Employees;
SELECT SUBSTRING(Name, 1, 3) AS Substring FROM Employees;
SELECT TRIM(Name) AS TrimmedName FROM Employees;
SELECT LOWER(Department) AS Lowercase FROM Employees;
SELECT UPPER(Department) AS Uppercase FROM Employees;
