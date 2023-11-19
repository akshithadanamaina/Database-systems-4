-- Database Create
Create Database EcoBricks;
Use EcoBricks;
Show Tables;

-- Tables Create
-- Product Table
CREATE TABLE Product ( ProductID INT PRIMARY KEY, Name VARCHAR(100), MaterialType VARCHAR(50) );

-- Customer Table
CREATE TABLE Customer ( CustomerID INT PRIMARY KEY, FullName VARCHAR(100), Address VARCHAR(255) );

-- Order Table
CREATE TABLE `Order` ( OrderID INT PRIMARY KEY, CustomerID INT, OrderDate DATE, FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) );

-- Supplier Table
CREATE TABLE Supplier ( SupplierID INT PRIMARY KEY, Name VARCHAR(100), MaterialSupplied VARCHAR(50) );

-- ProductionBatch Table
CREATE TABLE ProductionBatch ( BatchID INT PRIMARY KEY, ProductID INT, Quantity INT, FOREIGN KEY (ProductID) REFERENCES Product(ProductID) );
