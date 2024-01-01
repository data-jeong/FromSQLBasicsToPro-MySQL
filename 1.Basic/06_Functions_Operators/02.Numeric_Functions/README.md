
# 수치 함수 (Numeric Functions) 상세 사용 예시 및 실습

## 수치 함수 소개

수치 함수는 숫자 데이터를 처리하는 데 사용되는 SQL의 기능입니다. 이 함수들은 숫자의 반올림, 절대값 계산, 합계, 평균, 행 수 계산 등에 사용됩니다.

### 주요 수치 함수

- **ROUND**: 숫자를 반올림합니다.
- **ABS**: 절대값을 반환합니다.
- **SUM**: 합계를 계산합니다.
- **AVG**: 평균값을 계산합니다.
- **COUNT**: 행의 수를 계산합니다.

## 예시 쿼리 실습 및 분석

### 수치 함수 예제
```sql
SELECT ROUND(Salary, -3) AS RoundedSalary FROM Employees;
SELECT ABS(Salary - 60000) AS SalaryDifference FROM Employees;
SELECT SUM(Salary) FROM Employees;
SELECT AVG(Salary) FROM Employees;
SELECT COUNT(*) FROM Employees;
```

## 쿼리 진행 순서

1. **반올림**: `Employees` 테이블의 급여를 반올림합니다.
2. **절대값 계산**: 급여와 60000 사이의 차이를 절대값으로 계산합니다.
3. **합계 계산**: `Employees` 테이블의 급여 합계를 계산합니다.
4. **평균 계산**: `Employees` 테이블의 급여 평균을 계산합니다.
5. **행 수 계산**: `Employees` 테이블의 총 행 수를 계산합니다.

## 쿼리 진행도 (Mermaid)

```mermaid
graph LR
    A[반올림: ROUND] --> B[절대값 계산: ABS]
    B --> C[합계 계산: SUM]
    C --> D[평균 계산: AVG]
    D --> E[행 수 계산: COUNT]
    E --> F[결과: 수치 처리 완료]
```

수치 함수를 사용하면 데이터베이스 내의 숫자 데이터를 효율적으로 처리할 수 있습니다.
