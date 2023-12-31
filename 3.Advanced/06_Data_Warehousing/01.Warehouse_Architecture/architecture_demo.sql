-- 데이터 웨어하우스 아키텍처 설계 및 구현 예제

-- 차원 테이블 생성 예제: 고객 차원
CREATE TABLE dim_customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- 차원 테이블 생성 예제: 제품 차원
CREATE TABLE dim_product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- 사실 테이블 생성 예제: 판매 사실
CREATE TABLE fact_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- 차원 테이블과 사실 테이블을 사용한 간단한 쿼리 예제
-- 특정 기간 동안의 총 판매량 조회
SELECT 
    d.date,
    SUM(f.total_amount) AS total_sales
FROM 
    fact_sales f
JOIN 
    dim_date d ON f.date = d.date
WHERE 
    d.date BETWEEN '2023-01-01' AND '2023-01-31'
GROUP BY 
    d.date;

