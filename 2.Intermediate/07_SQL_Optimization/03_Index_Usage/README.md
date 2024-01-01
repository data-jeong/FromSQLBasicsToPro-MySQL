
# 인덱스 활용 (Index Usage) 상세 사용 예시

## 인덱스 활용이란?

적절한 인덱스 활용은 SQL 쿼리의 성능을 크게 향상시킬 수 있으며, 데이터 검색 속도를 높이고 전체적인 데이터베이스 성능을 개선합니다.

## 핵심 개념

- **성능 향상**: 적절한 인덱스는 쿼리 실행 시간을 단축시킵니다.
- **검색 최적화**: 인덱스는 데이터베이스 엔진이 데이터를 빠르게 찾을 수 있게 해줍니다.
- **데이터베이스 부하 감소**: 인덱스를 통해 쿼리 실행에 필요한 데이터베이스 리소스 사용이 줄어듭니다.

## 예시 쿼리 분석

### 인덱스 없는 집계 쿼리

```sql
SELECT EmployeeID, COUNT(DISTINCT Product), AVG(SaleAmount) 
FROM LargeSales 
GROUP BY EmployeeID;
```

### 인덱스 생성

```sql
CREATE INDEX idx_EmployeeID_Product_SaleAmount ON LargeSales(EmployeeID, Product, SaleAmount);
```

### 인덱스를 활용한 집계 쿼리

```sql
SELECT EmployeeID, COUNT(DISTINCT Product), AVG(SaleAmount) 
FROM LargeSales 
GROUP BY EmployeeID;
```

## 쿼리 진행 순서

1. **인덱스 없는 쿼리 실행**: 복잡한 집계 쿼리를 실행합니다.
2. **성능 문제 파악**: 쿼리 실행 속도가 느린 원인을 분석합니다.
3. **인덱스 생성**: 성능 개선을 위해 적절한 인덱스를 생성합니다.
4. **인덱스를 활용한 쿼리 실행**: 인덱스를 활용하여 효율적인 쿼리를 실행합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[인덱스 없는 쿼리 실행] --> B[성능 문제 분석]
    B --> C[인덱스 생성]
    C --> D[인덱스를 활용한 쿼리 실행]
    D --> E[최적화된 결과]
```

인덱스를 활용함으로써 복잡한 데이터베이스 쿼리의 성능을 개선하고, 전체 시스템의 효율성을 높일 수 있습니다.
