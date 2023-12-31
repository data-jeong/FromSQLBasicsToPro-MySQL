-- 수학 함수 예제
SELECT 
    NumberData,
    NumberData * 2 AS MultipliedByTwo,
    NumberData / 2 AS DividedByTwo,
    ABS(NumberData - 15) AS AbsoluteDifference
FROM 
    ExampleData;

