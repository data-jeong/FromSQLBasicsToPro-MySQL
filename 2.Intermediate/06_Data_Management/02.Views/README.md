
# 뷰 (Views) 상세 사용 예시

## 뷰란?

뷰는 데이터베이스에서 하나 이상의 테이블로부터 파생된 가상 테이블입니다. 뷰를 사용하면 데이터를 효율적으로 관리하고, 복잡한 쿼리를 단순화할 수 있습니다.

## 핵심 개념

- **가상 테이블**: 뷰는 실제 데이터를 저장하지 않는 가상 테이블입니다.
- **재사용 가능**: 뷰를 통해 정의한 쿼리는 여러 번 재사용할 수 있습니다.
- **보안**: 뷰를 사용하여 특정 데이터만을 사용자에게 노출시킬 수 있습니다.
- **단순화**: 복잡한 쿼리를 뷰로 정의하여 간단하게 만들 수 있습니다.

## 예시 쿼리 분석

### 뷰 생성

```sql
CREATE VIEW SalesSummary AS
SELECT Department, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY Department;
```

### 뷰 사용

```sql
SELECT * FROM SalesSummary;
```

## 쿼리 진행 순서

1. `CREATE VIEW SalesSummary`: 'SalesSummary'라는 이름의 뷰를 생성합니다.
2. `SELECT Department, SUM(SaleAmount)`: 'Sales' 테이블에서 부서별 총 판매액을 계산합니다.
3. `GROUP BY Department`: 결과를 부서별로 그룹화합니다.
4. `SELECT * FROM SalesSummary`: 생성된 뷰를 통해 부서별 총 판매액을 조회합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[Sales 테이블] -->|데이터 집계| B[SalesSummary 뷰 생성]
    B --> C[뷰 사용: 총 판매액 조회]
    C --> D[최종 결과: 부서별 총 판매액]
```

뷰를 사용함으로써 복잡한 데이터 집계 작업을 단순화하고, 재사용 가능한 데이터 접근 계층을 만들 수 있습니다.
