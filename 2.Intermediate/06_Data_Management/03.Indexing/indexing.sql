-- 인덱스 생성 및 사용 예제
CREATE INDEX idx_department ON Sales(Department);

-- 인덱스를 사용한 쿼리
SELECT * FROM Sales WHERE Department = 'Sales';

