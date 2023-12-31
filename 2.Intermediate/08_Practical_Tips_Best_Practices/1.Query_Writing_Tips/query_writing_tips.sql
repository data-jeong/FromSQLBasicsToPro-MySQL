-- 쿼리 작성 요령 예제

-- 예제 1: 간결하고 명확한 SELECT 쿼리
-- 나쁜 예:
SELECT * FROM Employees;

-- 좋은 예:
SELECT EmployeeID, Name, DepartmentID FROM Employees;

-- 예제 2: 조인 사용 시 명확한 테이블 별칭 사용
-- 나쁜 예:
SELECT e.Name, d.DepartmentName FROM Employees e, Departments d WHERE e.DepartmentID = d.DepartmentID;

-- 좋은 예:
SELECT emp.Name, dept.DepartmentName 
FROM Employees emp
JOIN Departments dept ON emp.DepartmentID = dept.DepartmentID;

-- 예제 3: 복잡한 쿼리를 단계적으로 나누어 작성
-- 나쁜 예:
SELECT EmployeeID, COUNT(*) FROM Sales WHERE SaleAmount > 500 GROUP BY EmployeeID HAVING COUNT(*) > 5;

-- 좋은 예:
-- 단계 1: 판매량이 500 이상인 판매 기록 필터링
WITH FilteredSales AS (
    SELECT * FROM Sales WHERE SaleAmount > 500
)
-- 단계 2: 직원별 판매 건수 계산 및 조건에 따라 필터링
SELECT EmployeeID, COUNT(*) 
FROM FilteredSales 
GROUP BY EmployeeID 
HAVING COUNT(*) > 5;

-- 예제 4: 쿼리 주석 사용
-- 이 쿼리는 각 부서의 직원 수를 계산합니다
SELECT dept.DepartmentName, COUNT(emp.EmployeeID) AS NumberOfEmployees
FROM Employees emp
JOIN Departments dept ON emp.DepartmentID = dept.DepartmentID
GROUP BY dept.DepartmentName;

