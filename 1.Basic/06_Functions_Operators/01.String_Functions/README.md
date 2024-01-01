
# 문자열 함수 (String Functions) 상세 사용 예시 및 실습

## 문자열 함수 소개

문자열 함수는 텍스트 데이터를 처리하는 데 사용되는 SQL의 기능입니다. 이 함수들은 문자열을 결합, 추출, 변환 및 트리밍하는 데 사용됩니다.

### 주요 문자열 함수

- **CONCAT**: 문자열을 결합합니다.
- **SUBSTRING**: 문자열의 일부를 추출합니다.
- **TRIM**: 문자열의 앞뒤 공백을 제거합니다.
- **LOWER**: 문자열을 소문자로 변환합니다.
- **UPPER**: 문자열을 대문자로 변환합니다.

## 예시 쿼리 실습 및 분석

### 문자열 함수 예제
```sql
SELECT CONCAT(Name, ' - ', Department) AS Concatenated FROM Employees;
SELECT SUBSTRING(Name, 1, 3) AS Substring FROM Employees;
SELECT TRIM(Name) AS TrimmedName FROM Employees;
SELECT LOWER(Department) AS Lowercase FROM Employees;
SELECT UPPER(Department) AS Uppercase FROM Employees;
```

## 쿼리 진행 순서

1. **문자열 결합**: `Name`과 `Department`를 결합합니다.
2. **문자열 추출**: `Name`의 일부를 추출합니다.
3. **문자열 트리밍**: `Name`의 앞뒤 공백을 제거합니다.
4. **소문자 변환**: `Department`를 소문자로 변환합니다.
5. **대문자 변환**: `Department`를 대문자로 변환합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[문자열 결합: CONCAT] --> B[문자열 추출: SUBSTRING]
    B --> C[문자열 트리밍: TRIM]
    C --> D[소문자 변환: LOWER]
    D --> E[대문자 변환: UPPER]
    E --> F[결과: 문자열 처리 완료]
```

문자열 함수를 사용하면 데이터베이스 내의 문자열 데이터를 효율적으로 처리할 수 있습니다.
