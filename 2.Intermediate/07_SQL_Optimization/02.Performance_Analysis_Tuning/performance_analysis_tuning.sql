-- 성능 분석 및 튜닝 예제 (개선된 버전)

-- 복잡한 조건을 가진 느린 쿼리 (인덱스 없음)
SELECT EmployeeID, Product, SUM(SaleAmount) 
FROM LargeSales 
WHERE SaleDate BETWEEN '2023-01-01' AND '2023-12-31' 
  AND SaleAmount > 500 
GROUP BY EmployeeID, Product;

-- 쿼리 성능 향상을 위한 인덱스 추가
CREATE INDEX idx_SaleAmount_SaleDate ON LargeSales(SaleAmount, SaleDate);

-- 인덱스를 활용한 빠른 쿼리 (인덱스 있음)
SELECT EmployeeID, Product, SUM(SaleAmount) 
FROM LargeSales 
WHERE SaleDate BETWEEN '2023-01-01' AND '2023-12-31' 
  AND SaleAmount > 500 
GROUP BY EmployeeID, Product;

