-- 사용자에게 특정 데이터베이스의 모든 권한 부여
GRANT ALL PRIVILEGES ON DatabaseName.* TO 'username'@'hostname';

-- 사용자 권한 취소
REVOKE ALL PRIVILEGES ON DatabaseName.* FROM 'username'@'hostname';
