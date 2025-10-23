--Question One 
CREATE TABLE ProductDetail_1NF AS
SELECT 
  OrderID, 
  CustomerName, 
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Products, ',', n.n), ',', -1)) AS Product
FROM ProductDetail
JOIN (
  SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3
) n
ON n.n <= 1 + LENGTH(Products) - LENGTH(REPLACE(Products, ',', ''));

--question 2
-- Create Orders table
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Create OrderItems table
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;

--question 3
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM Orders LIMIT 5;
SHOW TABLES;
SELECT * FROM OrderItems;
