
# 인덱스 (Indexing) 상세 사용 예시

## 인덱스란?

인덱스는 데이터베이스에서 데이터 검색 속도를 향상시키는 중요한 기능입니다. 적절한 인덱싱은 데이터 검색 및 처리 성능을 대폭 개선할 수 있습니다.

## 핵심 개념

- **데이터 접근 속도 향상**: 인덱스를 사용하면 특정 조건에 맞는 데이터를 빠르게 찾을 수 있습니다.
- **검색 및 정렬 최적화**: 특정 컬럼에 대한 검색 및 정렬 연산이 더 효율적으로 수행됩니다.
- **성능상의 비용**: 인덱스는 저장 공간을 차지하며, 데이터 삽입이나 수정 시 추가적인 연산이 필요합니다.

## 예시 쿼리 분석

### 인덱스 생성

```sql
CREATE INDEX idx_department ON Sales(Department);
```

### 인덱스 사용

```sql
SELECT * FROM Sales WHERE Department = 'Sales';
```

## 쿼리 진행 순서

1. `CREATE INDEX idx_department ON Sales(Department)`: 'Sales' 테이블의 'Department' 컬럼에 인덱스를 생성합니다.
2. `SELECT * FROM Sales WHERE Department = 'Sales'`: 생성된 인덱스를 활용하여 'Sales' 부서에 해당하는 데이터를 빠르게 검색합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[Sales 테이블] -->|인덱스 생성| B[idx_department 인덱스]
    B --> C[데이터 검색: Department = 'Sales']
    C --> D[최종 결과: 'Sales' 부서 데이터]
```

인덱스를 사용함으로써 복잡한 데이터베이스 쿼리의 속도를 크게 향상시킬 수 있습니다.
