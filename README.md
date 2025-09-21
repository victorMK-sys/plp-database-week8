#	Inventory Database 🖥️
## A. Overview

This project provides SQL scripts to set up an Inventory Management Database.
The schema is designed to manage:

Managers who oversee stores.

Stores with their addresses and assigned managers.

Products purchased and linked to stores.

Vehicles associated with stores.

## B. Database Schema
### 1. managers 🤵‍♂️:

Stores information about store managers.

managerID (INT, Primary Key, Auto Increment) – Unique manager identifier.

managerName (VARCHAR(50), NOT NULL) – Manager’s full name.

contact (JSON, NOT NULL) – Contact information (e.g., { "email": "john@company.com", "tel": "+254700000000" }).

### 2. stores 🏛️:

Contains store details and links to managers.

storeID (INT, Primary Key, NOT NULL) – Unique store identifier.

storeName (VARCHAR(50), NOT NULL) – Store name.

address (JSON, NOT NULL) – Address information (e.g., { "county": "Nairobi", "district": "Westlands", "street": "Kenyatta Ave", "houseNo": "12B" }).

managerID (INT, Foreign Key) – References managers(managerID).

### 3. products 🛒:

Tracks products and their purchase information.

productID (INT, Primary Key, NOT NULL) – Unique product identifier.

productName (VARCHAR(50), NOT NULL) – Name of the product.

date_of_purchase (DATE, NOT NULL) – Date the product was purchased.

storeID (INT, Foreign Key) – References stores(storeID).

### 4. vehicles 🚚:

Maintains vehicle information linked to stores.

regNo (VARCHAR(20), Primary Key) – Vehicle registration number.

storeID (INT, Foreign Key) – References stores(storeID).

## C. How to Run 🧑‍💻
### Prerequisites

Install MySQL 5.7+ or MariaDB 10.2+ (required for JSON field support).

Ensure you have a SQL client (MySQL CLI, MySQL Workbench, DBeaver, etc.).

Steps

Clone or download this repository.

Open your SQL client and connect to your server.

Run the SQL script:

``` mysql -u your_username -p < path_to_downloaded_sql_file ```


## D. Confirm database creation 🚀
```
SHOW DATABASES;
USE Inventory;
SHOW TABLES;
```
