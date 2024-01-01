
# DDL 및 기본 데이터 조작 사용 예시

## DDL (Data Definition Language) 소개

DDL은 데이터베이스의 구조를 정의하는 데 사용되는 SQL의 중요한 부분입니다. DDL 명령어로는 CREATE, ALTER, DROP 등이 있습니다.

## 주요 DDL 명령어

- **CREATE**: 데이터베이스나 테이블 생성.
  - 예: `CREATE TABLE students (id INT, name VARCHAR(100));`
- **ALTER**: 기존 데이터베이스 구조 수정.
  - 예: `ALTER TABLE students ADD COLUMN email VARCHAR(100);`
- **DROP**: 데이터베이스나 테이블 삭제.
  - 예: `DROP TABLE students;`

## 기본 데이터 조작

### 데이터 삽입
```sql
INSERT INTO Employees (EmployeeID, Name, Position, Salary)
VALUES (1, 'John Doe', 'Manager', 75000.00);
```

### 데이터 조회
```sql
SELECT * FROM Employees;
```

### 데이터 업데이트
```sql
UPDATE Employees
SET Salary = 80000.00
WHERE EmployeeID = 1;
```

### 데이터 삭제
```sql
DELETE FROM Employees
WHERE EmployeeID = 1;
```

## 쿼리 진행 순서

1. **데이터 삽입**: `Employees` 테이블에 새로운 직원 데이터를 삽입합니다.
2. **데이터 조회**: `Employees` 테이블의 모든 데이터를 조회합니다.
3. **데이터 업데이트**: 특정 직원의 급여 정보를 업데이트합니다.
4. **데이터 삭제**: 특정 직원의 레코드를 삭제합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터 삽입] --> B[데이터 조회]
    B --> C[데이터 업데이트]
    C --> D[데이터 삭제]
    D --> E[결과: 데이터 조작 완료]
```

이 예시를 통해 DDL 명령어와 기본 데이터 조작 과정을 이해할 수 있습니다.
