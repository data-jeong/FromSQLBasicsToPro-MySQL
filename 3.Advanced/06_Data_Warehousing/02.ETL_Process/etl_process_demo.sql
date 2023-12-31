-- ETL 과정 구현 예제

-- 1단계: 데이터 추출 (Extract)
-- 소스 데이터베이스에서 필요한 데이터를 추출하는 쿼리
SELECT * FROM source_table WHERE condition;

-- 2단계: 데이터 변환 (Transform)
-- 추출된 데이터를 필요한 형식으로 변환
-- 예시: 데이터 클렌징, 필터링, 집계 등

-- 3단계: 데이터 로딩 (Load)
-- 변환된 데이터를 목표 데이터 웨어하우스 테이블에 로드
INSERT INTO target_table (columns) VALUES (transformed_data);

