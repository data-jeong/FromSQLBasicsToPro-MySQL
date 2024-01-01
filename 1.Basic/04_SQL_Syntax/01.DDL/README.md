
# DDL (Data Definition Language) 상세 사용 예시 및 실습

## DDL 소개

DDL(Data Definition Language)은 데이터베이스의 구조를 정의하는 데 사용되는 SQL의 일부입니다. DDL을 사용하여 데이터베이스 및 테이블을 생성, 수정, 삭제합니다.

### 주요 DDL 명령어

#### CREATE
- 데이터베이스나 테이블을 생성합니다.
- 예: `CREATE TABLE students (id INT, name VARCHAR(100));`

#### ALTER
- 기존의 데이터베이스 구조를 수정합니다.
- 예: `ALTER TABLE students ADD COLUMN email VARCHAR(100);`

#### DROP
- 데이터베이스나 테이블을 삭제합니다.
- 예: `DROP TABLE students;`

## 예시 쿼리 실습 및 분석

### 테이블 생성, 구조 변경, 삭제
```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);
ALTER TABLE Employees ADD Email VARCHAR(100);
DROP TABLE Employees;
```

## 쿼리 진행 순서

1. **테이블 생성**: `Employees` 테이블을 생성합니다.
2. **테이블 구조 변경**: `Employees` 테이블에 `Email` 열을 추가합니다.
3. **테이블 삭제**: `Employees` 테이블을 삭제합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[테이블 생성: Employees] --> B[테이블 구조 변경: 열 추가]
    B --> C[테이블 삭제: Employees]
    C --> D[결과: 테이블 생성, 변경, 삭제]
```

DDL을 사용하면 데이터베이스의 구조를 정의하고, 필요에 따라 수정하거나 제거할 수 있습니다.
