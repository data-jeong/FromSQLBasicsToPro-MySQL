-- 보안 관련 사항 예제

-- 사용자와 역할 생성 예제
CREATE ROLE ReadOnly;
GRANT SELECT ON Sales TO ReadOnly;

CREATE USER ReportingUser WITH PASSWORD 'strong_password';
GRANT ReadOnly TO ReportingUser;

-- 데이터 암호화 및 SQL 인젝션 방지는 구체적인 DBMS 기능에 따라 다름

