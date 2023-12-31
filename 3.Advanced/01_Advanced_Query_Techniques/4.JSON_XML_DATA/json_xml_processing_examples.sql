-- 예제 데이터 생성
CREATE TABLE JsonData (
    ID INT PRIMARY KEY,
    Data NVARCHAR(MAX)
);

-- JSON 형식 데이터 삽입
INSERT INTO JsonData (ID, Data)
VALUES 
(1, N'{"Name": "John", "Age": 30, "City": "New York"}'),
(2, N'{"Name": "Jane", "Age": 25, "City": "London"}');

-- JSON 데이터 처리 예제
SELECT 
    JSON_VALUE(Data, '$.Name') AS Name,
    JSON_VALUE(Data, '$.Age') AS Age,
    JSON_VALUE(Data, '$.City') AS City
FROM JsonData;

