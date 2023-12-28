# 정렬 및 필터링 (Sorting & Filtering)

정렬 및 필터링은 데이터를 특정 기준에 따라 정렬하거나 필터링하는 데 사용됩니다.

## ORDER BY

- 결과를 특정 순서로 정렬합니다.
- 예: `SELECT * FROM table_name ORDER BY column_name;`

## GROUP BY

- 특정 열의 값에 따라 데이터를 그룹화합니다.
- 예: `SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name;`

## HAVING

- GROUP BY와 함께 사용되어 그룹화된 결과에 조건을 적용합니다.
- 예: `SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name HAVING condition;`
