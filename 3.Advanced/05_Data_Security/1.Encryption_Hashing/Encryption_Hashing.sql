-- 데이터 AES 암호화 예제
-- 암호화 키 정의
SET @key_str = SHA2('YourEncryptionKey', 512);
SET @init_vector = 'YourInitVector';

-- 암호화할 데이터
SET @data = '암호화할 데이터';

-- AES 암호화 실행
SELECT HEX(AES_ENCRYPT(@data, @key_str, @init_vector)) AS encrypted_data;

-- 데이터 SHA-256 해싱 예제
-- 해싱할 데이터
SET @data = '해싱할 데이터';

-- SHA-256 해싱 실행
SELECT SHA2(@data, 256) AS hashed_data;

