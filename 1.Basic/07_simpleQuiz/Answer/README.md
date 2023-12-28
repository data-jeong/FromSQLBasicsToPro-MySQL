# 인재 발굴

문제: 가장 최근에 채용된 직원 중, 누가 가장 높은 급여를 받고 있는가?
답변: SELECT \* FROM Employees WHERE HireDate = (SELECT MAX(HireDate) FROM Employees) ORDER BY Salary DESC LIMIT 1;
부서별 예산 관리

문제: 각 부서별로 가장 많은 예산을 사용한 프로젝트는 무엇인가?
답변: SELECT Department, MAX(Budget) AS MaxBudget FROM Projects GROUP BY Department;
프로젝트 효율성 분석

문제: 예산 대비 가장 긴 기간 동안 진행된 프로젝트는 무엇인가?
답변: SELECT ProjectName, Budget, DATEDIFF(EndDate, StartDate) AS Duration FROM Projects ORDER BY Duration DESC, Budget ASC LIMIT 1;
인사이트 도출

문제: 가장 많은 프로젝트에 참여한 직원이 속한 부서는 어디인가?
답변: SELECT Department FROM Employees WHERE EmployeeID = (SELECT EmployeeID FROM EmployeeProjects GROUP BY EmployeeID ORDER BY COUNT(ProjectID) DESC LIMIT 1);
비즈니스 전략 제안

문제: 평균 급여가 가장 높은 부서의 직원들이 참여한 프로젝트의 평균 예산은 얼마인가?
답변: SELECT AVG(Budget) AS AvgBudget FROM Projects WHERE ProjectID IN (SELECT ProjectID FROM EmployeeProjects WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE Department = (SELECT Department FROM Employees GROUP BY Department ORDER BY AVG(Salary) DESC LIMIT 1)));
