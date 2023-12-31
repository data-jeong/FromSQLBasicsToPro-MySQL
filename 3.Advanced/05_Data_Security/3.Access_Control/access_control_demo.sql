-- 다양한 접근 제어 모델 구현 예제

-- 임의 접근 제어 (DAC) 예제
-- 사용자에게 특정 테이블에 대한 SELECT 권한 부여
GRANT SELECT ON database.table TO 'user'@'localhost';

-- 엄격한 접근 제어 (MAC) 예제
-- 데이터베이스 레벨에서 보안 등급 설정
-- 이 예제에서는 MySQL의 기본 기능을 확장해야 할 수도 있습니다.

-- 역할 기반 접근 제어 (RBAC) 예제
-- 역할 생성 및 권한 부여
CREATE ROLE 'report_viewer';
GRANT SELECT ON database.report_table TO 'report_viewer';

-- 사용자에게 역할 부여
GRANT 'report_viewer' TO 'user'@'localhost';

