-- Bronze Table Creation --
--Create Customer  Table--
IF OBJECT_ID('bronze.Customers', 'U') IS NOT NULL
DROP TABLE bronze.Customers
CREATE TABLE bronze.Customers(
CustomerKey INT,
Gender NVARCHAR(15),
Name NVARCHAR(200),
City NVARCHAR(50),
[State Code] NVARCHAR(30),
State NVARCHAR(50),
[Zip Code] NVARCHAR(30),
Country NVARCHAR(20),
Continent NVARCHAR(50),
Birthday DATE);

-- Create Exchange Rate Table--
IF OBJECT_ID('bronze.ExchangeRates', 'U') IS NOT NULL
DROP TABLE bronze.ExchangeRates
CREATE TABLE bronze.ExchangeRates(
Date DATE,
Currency NVARCHAR(20),
Exchange FLOAT)

-- Create Product Table--
IF OBJECT_ID('bronze.Products', 'U') IS NOT NULL
DROP TABLE bronze.Products
CREATE TABLE bronze.Products(
ProductKey INT,
[Product Name] NVARCHAR(100),
Brand NVARCHAR(25),
Color NVARCHAR(100),
[Unit Cost USD] NVARCHAR(20),
[Unit Price USD] NVARCHAR(20),
SubcategoryKey NVARCHAR(20),
Subcategory	NVARCHAR(50),
CategoryKey NVARCHAR(20),	
Category NVARCHAR(100))

-- Create Sales Table--
IF OBJECT_ID('bronze.Sales','U') IS NOT NULL
DROP TABLE bronze.Sales
CREATE TABLE bronze.Sales(
[Order Number] INT,
[Line Item] INT,
[Order Date] DATE,
[Delivery Date] DATE,
CustomerKey INT,
StoreKey INT,
ProductKey INT,
Quantity INT,
[Currency Code] NVARCHAR(10))

-- Create Stores Table--
IF OBJECT_ID('bronze.Stores', 'U') IS NOT NULL
DROP TABLE bronze.Stores
CREATE TABLE bronze.Stores(
StoreKey INT,
Country NVARCHAR(20),
State NVARCHAR(30),
[Square Meters] INT,
[Open Date] DATE) 
