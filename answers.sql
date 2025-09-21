CREATE DATABASE IF NOT EXISTS Inventory;

USE Inventory;

CREATE TABLE managers(
  managerID INT PRIMARY KEY AUTO_INCREMENT,
  managerName VARCHAR(50) NOT NULL,
  contact json NOT NULL, -- {"email", "tel"}
);

CREATE TABLE stores(
  storeID INT PRIMARY KEY NOT NULL,
  storeName VARCHAR(50) NOT NULL,
  address json NOT NULL, -- {"county", "district", "street", "houseNo"}
  managerID INT,
  FOREIGN KEY (managerID) REFERENCES managers(managerID)
);

CREATE TABLE products(
  productID INT PRIMARY KEY NOT NULL,
  productName VARCHAR(50) NOT NULL,
  date_of_purchase date NOT NULL,
  storeID INT,
  FOREIGN KEY (storeID) REFERENCES stores(storeID)  
);

CREATE TABLE vehicles(
  regNo VARCHAR(20) PRIMARY KEY,
  storeID INT,
  FOREIGN KEY (storeID) REFERENCES stores(storeID)
);
