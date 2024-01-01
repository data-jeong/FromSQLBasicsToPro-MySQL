
# 공통 테이블 표현식 (CTE) 상세 사용 예시

## 공통 테이블 표현식(CTE)이란?

공통 테이블 표현식(CTE)은 복잡한 SQL 쿼리를 작고 단순한 부분으로 나누어 더 읽기 쉽고 유지보수하기 쉬운 쿼리를 작성하는 데 도움을 줍니다. CTE는 복잡한 조인, 서브쿼리, 재귀적 연산 등에 유용합니다.

## 학습 목표

### CTE의 개념 이해
- CTE는 임시 결과 집합을 정의하고, 이를 쿼리 내에서 하나 이상의 번 사용할 수 있게 합니다.
- 이를 통해 쿼리의 가독성과 구조를 개선하며, 복잡한 쿼리를 더 이해하기 쉽게 만들 수 있습니다.

### CTE 작성 및 통합
- CTE는 `WITH` 절을 사용하여 정의되며, 쿼리의 시작 부분에 위치합니다.
- CTE를 활용하면 복잡한 로직을 단계별로 분리하여 쿼리의 명확성을 높일 수 있습니다.

### 재귀적 CTE 탐구
- 재귀적 CTE는 계층적 데이터 구조(예: 조직도, 카테고리 계층)를 쿼리하는 데 사용됩니다.
- 재귀적 CTE는 자기 자신을 참조하는 특별한 형태의 CTE입니다.

## 예시 쿼리 분석

### 예제 1: 재귀적 CTE를 사용한 조직도 쿼리
```sql
WITH RECURSIVE OrgChart AS (
    SELECT EmployeeID, Name, ManagerID
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.EmployeeID, e.Name, e.ManagerID
    FROM Employees e
    INNER JOIN OrgChart o ON e.ManagerID = o.EmployeeID
)
SELECT * FROM OrgChart;
```

## 쿼리 진행 순서

1. **CTE 정의**: `OrgChart`라는 이름의 재귀적 CTE를 정의합니다.
2. **재귀적 쿼리 실행**: CTE 내에서 자기 자신을 참조하여 계층적 데이터를 쿼리합니다.
3. **결과 조회**: 최종적으로 계층적으로 구성된 조직도 데이터를 조회합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[CTE 정의: OrgChart] --> B[재귀적 쿼리 실행]
    B --> C[결과 조회]
    C --> D[조직도 데이터]
```

이러한 CTE의 사용은 복잡한 데이터베이스 쿼리를 구조화하고 가독성을 높이는 데 매우 효과적입니다.
