
# GROUP BY 사용 예시

## GROUP BY란?

`GROUP BY`는 SQL에서 데이터를 특정 컬럼을 기준으로 그룹화하는 구문입니다. 이 구문은 데이터를 요약하고 분석하는 데 유용합니다.

## 기본 개념

- **목적**: 특정 컬럼을 기준으로 데이터를 그룹화합니다.
- **사용법**: `GROUP BY` 구문은 보통 집계 함수(`SUM`, `COUNT`, `AVG` 등)와 함께 사용됩니다.
- **결과**: 그룹화된 데이터에 대한 집계 결과를 반환합니다.

## 예시 쿼리

제품별 총 판매량을 계산하는 쿼리입니다.

```sql
SELECT 
    Product,
    SUM(Amount) AS TotalSales
FROM 
    Sales
GROUP BY 
    Product;
```

## 쿼리 진행 순서

1. `FROM Sales`: `Sales` 테이블에서 데이터를 선택합니다.
2. `SELECT Product, SUM(Amount) AS TotalSales`: 각 제품(`Product`)에 대해 총 판매량(`SUM(Amount)`)을 계산합니다.
3. `GROUP BY Product`: 제품별로 데이터를 그룹화하고, 각 그룹에 대해 총 판매량을 계산합니다.
4. 결과 반환: 제품과 해당 제품의 총 판매량을 포함하는 결과를 반환합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[Sales 테이블] -->|데이터 선택| B[Product, SUM(Amount) AS TotalSales]
    B -->|그룹화: GROUP BY Product| C[각 제품별 총 판매량]
    C --> D[최종 결과: 제품별 총 판매량]
```

