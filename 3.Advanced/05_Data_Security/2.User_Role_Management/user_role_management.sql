-- 사용자 및 역할 생성 및 관리 예제

-- 새로운 사용자 생성
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';

-- 새로운 역할 생성
CREATE ROLE 'data_analyst';

-- 역할에 권한 부여
GRANT SELECT ON database.table TO 'data_analyst';

-- 사용자에게 역할 부여
GRANT 'data_analyst' TO 'new_user'@'localhost';

-- 사용자에게 역할 활성화
SET DEFAULT ROLE 'data_analyst' TO 'new_user'@'localhost';

