
# DML (Data Manipulation Language) 상세 사용 예시 및 실습

## DML 소개

DML(Data Manipulation Language)은 데이터베이스 내의 데이터를 관리하고 조작하기 위한 SQL의 주요 부분입니다. DML 명령어는 데이터의 삽입, 조회, 업데이트, 삭제를 포함합니다.

## 주요 DML 명령어

- **INSERT**: 새로운 데이터를 테이블에 삽입합니다.
- **SELECT**: 테이블에서 데이터를 조회합니다.
- **UPDATE**: 테이블의 기존 데이터를 수정합니다.
- **DELETE**: 테이블에서 데이터를 삭제합니다.

## 예시 쿼리 실습 및 분석

### 데이터 삽입 (INSERT)
```sql
INSERT INTO Employees (EmployeeID, Name, Position, Salary)
VALUES (1, 'Alice Smith', 'Developer', 70000.00);
```

### 데이터 조회 (SELECT)
```sql
SELECT * FROM Employees;
```

### 데이터 업데이트 (UPDATE)
```sql
UPDATE Employees
SET Salary = 75000.00
WHERE EmployeeID = 1;
```

### 데이터 삭제 (DELETE)
```sql
DELETE FROM Employees
WHERE EmployeeID = 1;
```

## 쿼리 진행 순서

1. **데이터 삽입**: `Employees` 테이블에 새로운 데이터를 추가합니다.
2. **데이터 조회**: `Employees` 테이블의 모든 데이터를 조회합니다.
3. **데이터 업데이트**: 특정 직원의 급여를 업데이트합니다.
4. **데이터 삭제**: 특정 직원의 데이터를 삭제합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터 삽입] --> B[데이터 조회]
    B --> C[데이터 업데이트]
    C --> D[데이터 삭제]
    D --> E[결과: 데이터 조작 완료]
```

이 실습 예제를 통해 DML 명령어를 사용하여 데이터를 조작하는 기본 방법을 이해할 수 있습니다.
