
# 연산자 (Operators) 상세 사용 예시 및 실습

## 연산자 소개

연산자는 SQL에서 데이터에 대한 다양한 연산을 수행하는 데 사용됩니다. 이러한 연산자는 조건의 결합, 비교, 부정 등을 통해 데이터를 필터링하고 조작하는 데 유용합니다.

### 주요 연산자 유형

#### 논리 연산자 (Logical Operators)
- **AND, OR, NOT**: 조건을 결합하거나 부정합니다.
  - 예: `SELECT * FROM Employees WHERE Salary > 50000 AND Department = 'IT';`

#### 비교 연산자 (Comparison Operators)
- **=, <>, <, >, <=, >=**: 값들을 비교합니다.
  - 예: `SELECT * FROM Employees WHERE Salary >= 70000;`

## 예시 쿼리 실습 및 분석

### 연산자 예제
```sql
SELECT * FROM Employees WHERE Salary > 50000 AND Department = 'IT';
SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 80000;
SELECT * FROM Employees WHERE Department IN ('Engineering', 'IT');
SELECT * FROM Employees WHERE Name LIKE 'A%';
SELECT * FROM Employees WHERE Salary <> 60000;
```

## 쿼리 진행 순서

1. **AND 조건 사용**: 급여가 50000 이상이고 IT 부서에 속한 직원을 조회합니다.
2. **BETWEEN 사용**: 급여가 40000과 80000 사이인 직원을 조회합니다.
3. **IN 사용**: 'Engineering' 또는 'IT' 부서에 속한 직원을 조회합니다.
4. **LIKE 사용**: 이름이 'A'로 시작하는 직원을 조회합니다.
5. **<> 사용**: 급여가 60000이 아닌 직원을 조회합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[AND 조건 사용] --> B[BETWEEN 사용]
    B --> C[IN 사용]
    C --> D[LIKE 사용]
    D --> E[<> 사용]
    E --> F[결과: 조건에 따른 데이터 필터링]
```

연산자를 사용하면 데이터베이스 내의 데이터를 효과적으로 필터링하고 선택할 수 있습니다.
