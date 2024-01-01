
# FULL OUTER JOIN 상세 사용 예시

## FULL OUTER JOIN이란?

FULL OUTER JOIN은 두 테이블의 모든 행을 반환하는 SQL 조인 유형입니다. 이 조인은 일치하는 행이 없는 경우 해당 필드를 NULL 값으로 표시하며, 두 테이블의 전체 데이터를 결합하는 데 사용됩니다.

## 핵심 개념

- **전체 데이터 결합**: 두 테이블의 모든 행이 결과에 포함됩니다.
- **일치하는 행 결합 및 NULL 처리**: 일치하는 행이 있으면 결합되고, 없는 경우 NULL로 표시됩니다.

## 예시 쿼리 분석

### FULL OUTER JOIN 예제
```sql
SELECT 
    Table1.id,
    Table1.value,
    Table2.description
FROM 
    Table1
FULL OUTER JOIN 
    Table2 
ON 
    Table1.id = Table2.id;
```

## 쿼리 진행 순서

1. **데이터 선택**: `Table1`과 `Table2`에서 필요한 컬럼을 선택합니다.
2. **FULL OUTER JOIN 적용**: `Table1`과 `Table2`를 조인하며, 양쪽 테이블의 모든 행을 포함합니다.
3. **결과 반환**: 일치하는 행들과 일치하지 않는 행들(이 경우 NULL로 표시됨)을 반환합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터 선택: Table1 및 Table2] --> B[FULL OUTER JOIN 적용]
    B --> C[결과 반환: 모든 행 및 NULL]
    C --> D[최종 결과: 결합된 전체 데이터]
```

FULL OUTER JOIN을 사용하면 두 테이블의 전체 데이터를 결합하고, 일치하지 않는 행이 있어도 그 정보를 유지할 수 있습니다.
