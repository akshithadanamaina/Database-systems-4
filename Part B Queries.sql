-- 1 & 2: Insert Statements
-- Insert into Product Table:
INSERT INTO Product (ProductID, Name, MaterialType) VALUES (5, 'EcoDesk', 'Mixed Plastic');
 
-- Insert into Customer Table:
INSERT INTO Customer (CustomerID, FullName, Address) VALUES (5, 'Emily Johnson', '678 Cedar Ave, Littleton, CO');
 
-- 3 & 4: Update Statements
-- Update Product Table:
UPDATE Product SET MaterialType = 'Bamboo Composite' WHERE ProductID = 4;
 
-- Update Customer Table:
UPDATE Customer SET Address = '1234 New Address Lane, Springfield, IL' WHERE CustomerID = 2;
 
-- 5: Delete Statement
-- Delete from Supplier Table:
DELETE FROM Supplier WHERE SupplierID = 4;
 
-- 6: Simple Select Statement
-- Select Specific Columns from Order Table:
SELECT OrderID, OrderDate FROM `Order` WHERE CustomerID = 3;
 
-- 7 & 8: Join Select Statements
-- Join Customer and Order Tables:
SELECT Customer.FullName, Order.OrderDate FROM Customer JOIN `Order` ON Customer.CustomerID = Order.CustomerID;
 
-- Join Product and ProductionBatch Tables:
SELECT Product.Name, ProductionBatch.Quantity FROM Product JOIN ProductionBatch ON Product.ProductID = ProductionBatch.ProductID;
 
-- 9, 10 & 11: Queries with Summary Functions
-- Total Number of Orders Per Customer:
SELECT Customer.FullName, COUNT(Order.OrderID) AS TotalOrders FROM Customer JOIN `Order` ON Customer.CustomerID = Order.CustomerID GROUP BY Customer.FullName;
 
-- Average Quantity Produced in ProductionBatch:
SELECT AVG(Quantity) AS AverageQuantity FROM ProductionBatch;
 
-- Maximum Quantity Ordered:
SELECT MAX(Quantity) AS MaxQuantity FROM ProductionBatch;
 
-- 12: Multi-Table Query
-- Multi-Table Query Involving Customer and Order:
SELECT Customer.FullName, `Order`.OrderDate FROM Customer JOIN `Order` ON Customer.CustomerID = `Order`.CustomerID;
