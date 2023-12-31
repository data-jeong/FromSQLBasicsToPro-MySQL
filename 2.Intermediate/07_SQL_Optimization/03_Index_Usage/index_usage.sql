-- 인덱스 활용 예제 (개선된 버전)

-- 인덱스 없이 복잡한 집계 쿼리 실행
SELECT EmployeeID, COUNT(DISTINCT Product), AVG(SaleAmount) 
FROM LargeSales 
GROUP BY EmployeeID;

-- 인덱스 생성
CREATE INDEX idx_EmployeeID_Product_SaleAmount ON LargeSales(EmployeeID, Product, SaleAmount);

-- 인덱스를 활용한 집계 쿼리 실행
SELECT EmployeeID, COUNT(DISTINCT Product), AVG(SaleAmount) 
FROM LargeSales 
GROUP BY EmployeeID;

