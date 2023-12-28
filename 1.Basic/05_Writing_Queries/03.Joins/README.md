# 조인 (Joins)

조인은 두 개 이상의 테이블을 결합하여 데이터를 조회하는 데 사용됩니다.

## INNER JOIN

- 두 테이블의 교집합을 조회합니다.
- 예: `SELECT * FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;`

## LEFT/RIGHT OUTER JOIN

- 한 테이블의 모든 레코드와 다른 테이블의 일치하는 레코드를 조회합니다.
- 예 (LEFT): `SELECT * FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;`
- 예 (RIGHT): `SELECT * FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;`

## FULL OUTER JOIN

- 두 테이블의 모든 레코드를 조회하며, 한쪽에만 있는 레코드는 NULL로 표시합니다.
- 예: `SELECT * FROM table1 FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;`
