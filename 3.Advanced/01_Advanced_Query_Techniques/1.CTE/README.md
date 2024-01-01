
# 공통 테이블 표현식 (CTE) 상세 사용 예시

## 공통 테이블 표현식(CTE)이란?

공통 테이블 표현식(CTE)은 복잡한 SQL 쿼리를 작고 단순한 부분으로 나누어 더 읽기 쉽고 유지보수하기 쉬운 쿼리를 작성하는 데 도움을 줍니다. CTE는 복잡한 조인, 서브쿼리, 재귀적 연산 등에 유용합니다.

## 학습 목표

- **CTE의 개념 이해**: CTE가 쿼리의 가독성과 구조를 개선하는 방법을 이해합니다.
- **CTE 작성 및 통합**: CTE를 SQL 쿼리에 작성하고 효과적으로 통합하는 방법을 배웁니다.
- **재귀적 CTE 탐구**: 계층적 데이터 처리를 위한 재귀적 CTE 사용법을 학습합니다.

## 예시 쿼리 분석

### 예제 데이터 생성 및 삽입

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees (EmployeeID, Name, ManagerID)
VALUES 
(1, 'John Doe', NULL),
(2, 'Jane Smith', 1),
(3, 'Alice Johnson', 1),
(4, 'Bob Brown', 2);
```

### 기본 CTE 예제

```sql
WITH ManagerCTE AS (
    SELECT EmployeeID, Name
    FROM Employees
    WHERE ManagerID IS NULL
)
SELECT E.Name, M.Name AS Manager
FROM Employees E
JOIN ManagerCTE M ON E.ManagerID = M.EmployeeID;
```

## 쿼리 진행 순서

1. **테이블 생성 및 데이터 삽입**: `Employees` 테이블을 생성하고 임시 데이터를 삽입합니다.
2. **CTE 정의**: 관리자를 나타내는 `ManagerCTE`를 정의합니다.
3. **CTE와 조인**: `Employees` 테이블과 `ManagerCTE`를 조인하여 각 직원의 관리자를 조회합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[테이블 생성 및 데이터 삽입] --> B[CTE 정의]
    B --> C[CTE와 조인]
    C --> D[최종 결과: 직원과 관리자]
```

CTE를 사용하면 복잡한 쿼리를 명확하고 구조화된 방식으로 작성할 수 있습니다, 더 나은 가독성과 유지보수성을 제공합니다.
