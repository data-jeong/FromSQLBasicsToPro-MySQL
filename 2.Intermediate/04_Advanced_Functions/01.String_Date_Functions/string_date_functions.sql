-- 문자열 함수 예제
SELECT 
    TextData,
    UPPER(TextData) AS UpperCase,
    LOWER(TextData) AS LowerCase,
    CONCAT(TextData, ' Data') AS Concatenated
FROM 
    ExampleData;

-- 날짜 함수 예제
SELECT 
    DateData,
    YEAR(DateData) AS Year,
    MONTH(DateData) AS Month,
    DAY(DateData) AS Day
FROM 
    ExampleData;

