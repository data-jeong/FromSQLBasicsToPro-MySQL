-- 변환 함수 예제
SELECT 
    NumberData,
    CAST(NumberData AS VARCHAR(10)) AS StringFormat,
    CONVERT(VARCHAR(10), NumberData) AS ConvertedString
FROM 
    ExampleData;

