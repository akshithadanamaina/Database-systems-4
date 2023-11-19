-- Loading Data into the Product Table:
Select * from Prodcut;
LOAD DATA LOCAL INFILE 'C:/Users/My Pc/Documents/Database/Product.csv' INTO TABLE Product FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (ProductID, Name, MaterialType);
Select * from Product;
 
-- Loading Data into the Customer Table:
Select * from Customer;
LOAD DATA LOCAL INFILE 'C:/Users/My Pc/Documents/Database/Customer.csv' INTO TABLE Customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (CustomerID, FullName, Address);
Select * from Customer;
 
-- Loading Data into the Order Table:
Select * from `Order`;
LOAD DATA LOCAL INFILE 'C:/Users/My Pc/Documents/Database/Order.csv' INTO TABLE `Order` FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (OrderID, CustomerID, OrderDate);
Select * from `Order`;
 
-- Loading Data into the Supplier Table:
Select * from Supplier;
LOAD DATA LOCAL INFILE 'C:/Users/My Pc/Documents/Database/Supplier.csv' INTO TABLE Supplier FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (SupplierID, Name, MaterialSupplied);
Select * from Supplier;
 
-- Loading Data into the ProductionBatch Table:
Select * from ProductionBatch;
LOAD DATA LOCAL INFILE 'C:/Users/My Pc/Documents/Database/ProductionBatch.csv' INTO TABLE ProductionBatch FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (BatchID, ProductID, Quantity);
Select * from ProductionBatch;
