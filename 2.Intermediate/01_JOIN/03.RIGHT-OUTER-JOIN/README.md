
# RIGHT OUTER JOIN 상세 사용 예시

## RIGHT OUTER JOIN이란?

RIGHT OUTER JOIN은 오른쪽 테이블의 모든 행과 왼쪽 테이블에서 일치하는 행을 반환하는 SQL 조인 유형입니다. 일치하는 행이 없는 경우, 왼쪽 테이블의 필드는 NULL 값으로 표시됩니다.

## 핵심 개념

- **오른쪽 테이블 기준**: 오른쪽 테이블의 모든 행이 결과에 포함됩니다.
- **일치하는 행 결합**: 왼쪽 테이블에서 일치하는 행이 있으면 결합됩니다.
- **일치하지 않는 경우 NULL 처리**: 왼쪽 테이블에서 일치하는 행이 없으면 해당 필드는 NULL로 표시됩니다.

## 예시 쿼리 분석

### RIGHT OUTER JOIN 예제
```sql
SELECT 
    Table1.id,
    Table1.value,
    Table2.description
FROM 
    Table1
RIGHT OUTER JOIN 
    Table2 
ON 
    Table1.id = Table2.id;
```

## 쿼리 진행 순서

1. **데이터 선택**: `Table1`과 `Table2`에서 필요한 컬럼을 선택합니다.
2. **RIGHT OUTER JOIN 적용**: `Table2`를 기준으로 `Table1`과 조인합니다.
3. **결과 반환**: `Table2`의 모든 행과 `Table1`의 일치하는 행을 반환합니다. 일치하지 않는 경우 NULL로 표시됩니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터 선택: Table1 및 Table2] --> B[RIGHT OUTER JOIN 적용]
    B --> C[결과 반환: 일치하는 행 및 NULL]
    C --> D[최종 결과: 결합된 데이터]
```

RIGHT OUTER JOIN을 사용하면 오른쪽 테이블을 기준으로 관련 데이터를 결합하고, 일치하지 않는 경우에도 오른쪽 테이블의 데이터를 유지할 수 있습니다.
