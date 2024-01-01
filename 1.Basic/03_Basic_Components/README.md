
# SQL 기본 구성 요소 상세 사용 예시 및 실습

## 기본 구성 요소 소개

SQL 데이터베이스의 기본 구성 요소에는 데이터베이스, 테이블, 필드, 레코드가 포함됩니다. 이러한 요소들은 데이터를 효율적으로 저장하고 관리하는 데 필수적입니다.

### 데이터베이스 (Database)
- 데이터베이스는 구조화된 데이터의 집합입니다. 데이터베이스 관리 시스템(DBMS) 내에서 데이터를 저장하고 관리합니다.

### 테이블 (Table)
- 테이블은 데이터를 행과 열의 형식으로 저장합니다. 각 테이블은 고유한 이름과 하나 이상의 열(컬럼)을 가집니다.

### 필드 (Field)
- 필드(또는 열)는 테이블 내에서 특정 종류의 데이터를 저장하는 공간입니다. 각 필드는 고유한 데이터 타입을 가집니다.

### 레코드 (Record)
- 레코드(또는 행)는 테이블 내의 개별 데이터 항목을 나타냅니다. 각 레코드는 테이블의 필드에 해당하는 값을 가집니다.

## 예제 및 실습

### 기본 구성 요소 실습 예제
```sql
CREATE DATABASE IF NOT EXISTS ExampleDB;
USE ExampleDB;
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
INSERT INTO Customers (FirstName, LastName, Email) 
VALUES ('John', 'Doe', 'john.doe@example.com'),
       ('Jane', 'Doe', 'jane.doe@example.com');
```

## 쿼리 진행 순서

1. **데이터베이스 생성**: `ExampleDB` 데이터베이스를 생성합니다.
2. **데이터베이스 사용**: 생성된 데이터베이스를 사용합니다.
3. **테이블 생성**: `Customers` 테이블을 생성합니다.
4. **레코드 삽입**: `Customers` 테이블에 고객 데이터를 삽입합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[데이터베이스 생성] --> B[데이터베이스 사용]
    B --> C[테이블 생성]
    C --> D[레코드 삽입]
    D --> E[결과: 고객 데이터]
```

이 실습 예제를 통해 SQL의 기본 구성 요소를 이해하고 데이터베이스 및 테이블을 구성하는 방법을 배울 수 있습니다.
