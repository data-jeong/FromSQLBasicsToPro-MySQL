
# CROSS JOIN 상세 사용 예시

## CROSS JOIN이란?

CROSS JOIN은 두 테이블 간 가능한 모든 조합을 생성하는 SQL 조인 유형입니다. 이 조인은 두 테이블의 모든 행을 조합하여 크로스 프로덕트를 생성하는 데 사용됩니다.

## 핵심 개념

- **모든 조합 생성**: CROSS JOIN은 한 테이블의 각 행과 다른 테이블의 모든 행을 결합합니다.
- **크로스 프로덕트**: 결과는 두 테이블의 행 수를 곱한 만큼의 조합을 포함합니다.

## 예시 쿼리 분석

### CROSS JOIN 예제
```sql
SELECT 
    Table1.id,
    Table1.value,
    Table2.description
FROM 
    Table1
CROSS JOIN 
    Table2;
```

## 쿼리 진행 순서

1. **데이터 선택**: `Table1`과 `Table2`에서 필요한 컬럼을 선택합니다.
2. **CROSS JOIN 적용**: `Table1`과 `Table2`를 크로스 조인하여 모든 가능한 조합을 생성합니다.
3. **결과 반환**: 생성된 모든 조합의 결과를 반환합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터 선택: Table1 및 Table2] --> B[CROSS JOIN 적용]
    B --> C[결과 반환: 모든 조합]
    C --> D[최종 결과: 크로스 프로덕트]
```

CROSS JOIN을 사용하면 두 테이블 간의 모든 가능한 조합을 탐색하고 분석할 수 있습니다.
