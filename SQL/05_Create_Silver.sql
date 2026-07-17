-- Silver Table Creation --
IF OBJECT_ID('silver.Customers', 'U') IS NOT NULL
DROP TABLE silver.Customers
CREATE TABLE silver.Customers(
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
IF OBJECT_ID('silver.ExchangeRates', 'U') IS NOT NULL
DROP TABLE silver.ExchangeRates
CREATE TABLE silver.ExchangeRates(
Date DATE,
Currency NVARCHAR(20),
Exchange FLOAT)

-- Create Product Table--
IF OBJECT_ID('silver.Products', 'U') IS NOT NULL
DROP TABLE silver.Products
CREATE TABLE silver.Products(
ProductKey INT,
[Product Name] NVARCHAR(100),
Brand NVARCHAR(25),
Color NVARCHAR(15),
[Unit Cost USD] FLOAT,
[Unit Price USD] FLOAT,
SubcategoryKey INT,
Subcategory	NVARCHAR(50),
CategoryKey INT,	
Category NVARCHAR(35))

-- Create Sales Table--
IF OBJECT_ID('silver.Sales','U') IS NOT NULL
DROP TABLE silver.Sales
CREATE TABLE silver.Sales(
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
IF OBJECT_ID('silver.Stores', 'U') IS NOT NULL
DROP TABLE silver.Stores
CREATE TABLE silver.Stores(
StoreKey INT,
Country NVARCHAR(20),
State NVARCHAR(30),
[Square Meters] INT,
[Open Date] DATE) 
