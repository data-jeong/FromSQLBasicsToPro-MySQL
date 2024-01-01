
# SQL 기초 상세 사용 예시 및 실습

## SQL 소개

SQL(Structured Query Language)은 데이터베이스 관리 및 조작을 위한 표준 프로그래밍 언어입니다. 데이터베이스 관리 시스템(DBMS)에서 데이터를 저장, 검색, 수정, 삭제하는 데 주로 사용됩니다.

## 데이터베이스 관리 시스템(DBMS)

DBMS는 데이터를 효율적으로 저장하고 관리하기 위한 소프트웨어 시스템입니다. SQL을 사용하여 이러한 시스템과 상호 작용하며 데이터를 조작하고 분석합니다.

## SQL의 중요성

SQL은 데이터 중심의 현대 세계에서 필수적인 역할을 합니다. 웹 개발, 데이터 분석, 데이터베이스 관리 등 다양한 분야에서 그 중요성이 강조됩니다.

## 기본 구조

SQL은 다양한 명령문을 통해 데이터베이스와 소통합니다. 이러한 명령문에는 데이터 정의 언어(DDL), 데이터 조작 언어(DML), 데이터 제어 언어(DCL) 등이 포함됩니다.

## 예시 쿼리 실습 및 분석

### 데이터베이스 및 테이블 생성, 데이터 삽입
```sql
CREATE DATABASE IF NOT EXISTS SampleDB;
USE SampleDB;
CREATE TABLE IF NOT EXISTS Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (ID, Name, Position, Salary) 
VALUES (1, 'Alice', 'Developer', 60000.00),
       (2, 'Bob', 'Designer', 55000.00);
SELECT * FROM Employees;
```

## 쿼리 진행 순서

1. **데이터베이스 생성**: `SampleDB` 데이터베이스를 생성합니다.
2. **데이터베이스 사용**: 생성된 데이터베이스를 사용합니다.
3. **테이블 생성**: `Employees` 테이블을 생성합니다.
4. **데이터 삽입**: `Employees` 테이블에 직원 데이터를 삽입합니다.
5. **데이터 조회**: `Employees` 테이블의 모든 데이터를 조회합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터베이스 생성] --> B[데이터베이스 사용]
    B --> C[테이블 생성]
    C --> D[데이터 삽입]
    D --> E[데이터 조회]
    E --> F[결과: 직원 데이터]
```

SQL을 사용하면 데이터베이스를 생성하고, 데이터를 관리하는 기본적인 작업을 수행할 수 있습니다.
