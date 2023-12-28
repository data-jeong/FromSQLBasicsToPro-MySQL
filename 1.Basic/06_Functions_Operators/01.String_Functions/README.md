# 문자열 함수 (String Functions)

문자열 함수는 텍스트 데이터를 처리하는 데 사용됩니다.

## CONCAT

- 문자열을 결합합니다.
- 예: `SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;`

## SUBSTRING

- 문자열의 일부를 추출합니다.
- 예: `SELECT SUBSTRING(Name, 1, 5) AS ShortName FROM Employees;`

## TRIM

- 문자열의 앞뒤 공백을 제거합니다.
- 예: `SELECT TRIM(Name) AS TrimmedName FROM Employees;`

## LOWER

- 문자열을 소문자로 변환합니다.
- 예: `SELECT LOWER(Name) AS LowercaseName FROM Employees;`

## UPPER

- 문자열을 대문자로 변환합니다.
- 예: `SELECT UPPER(Name) AS UppercaseName FROM Employees;`
