
# INNER JOIN 상세 사용 예시

## INNER JOIN이란?

INNER JOIN은 두 테이블에서 일치하는 행만을 반환하는 SQL 조인 유형입니다. 이 조인은 두 테이블 간의 공통된 데이터를 필터링하는 데 사용됩니다.

## 핵심 개념

- **공통 데이터 필터링**: INNER JOIN은 두 테이블 간에 일치하는 행만을 선택합니다.
- **조인 조건**: INNER JOIN은 ON 절을 사용하여 두 테이블 간의 연결 조건을 지정합니다.

## 예시 쿼리 분석

### INNER JOIN 예제
```sql
SELECT 
    Table1.id,
    Table1.value,
    Table2.description
FROM 
    Table1
INNER JOIN 
    Table2 
ON 
    Table1.id = Table2.id;
```

## 쿼리 진행 순서

1. **데이터 선택**: `Table1`과 `Table2`에서 필요한 컬럼을 선택합니다.
2. **INNER JOIN 적용**: `Table1`과 `Table2`를 `id` 컬럼을 기준으로 조인합니다.
3. **결과 반환**: 일치하는 행들에 대한 `id`, `value`, `description` 컬럼 값을 반환합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터 선택: Table1 및 Table2] --> B[INNER JOIN 적용]
    B --> C[결과 반환: 일치하는 행]
    C --> D[최종 결과: 공통 데이터]
```

INNER JOIN을 사용하면 두 테이블 간의 관련된 데이터를 효율적으로 결합하고 필터링할 수 있습니다.
