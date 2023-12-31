-- OLAP 연산 구현 예제

-- 롤업(Roll-Up) 연산: 더 높은 차원에서 데이터 집계
SELECT higher_dimension, SUM(measure)
FROM fact_table
GROUP BY higher_dimension;

-- 드릴-다운(Drill-Down) 연산: 더 낮은 차원에서 데이터 분석
SELECT lower_dimension, SUM(measure)
FROM fact_table
GROUP BY lower_dimension;

-- 슬라이스(Slice) 연산: 한 차원을 고정하고 다른 차원을 분석
SELECT dimension1, SUM(measure)
FROM fact_table
WHERE dimension2 = 'specific_value'
GROUP BY dimension1;

-- 다이스(Dice) 연산: 여러 차원을 특정 값으로 제한하고 데이터 분석
SELECT dimension1, dimension2, SUM(measure)
FROM fact_table
WHERE dimension1 = 'value1' AND dimension2 = 'value2'
GROUP BY dimension1, dimension2;

