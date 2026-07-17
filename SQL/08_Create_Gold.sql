
-- Gold Customer table Creation --
IF OBJECT_ID('gold.Customers', 'U') IS NOT NULL
DROP TABLE gold.Customers
CREATE TABLE gold.Customers
(CustomerKey int PRIMARY KEY,
Gender nvarchar(15),
Name nvarchar(200),
City nvarchar(50),
StateCode nvarchar(50),
Country nvarchar(20),
Continent nvarchar(20),
Birthday date)

-- Gold exchange table creation --
IF OBJECT_ID('gold.ExchangeRates', 'U') IS NOT NULL
DROP TABLE gold.ExchangeRates
CREATE TABLE gold.ExchangeRates
(Date date,
Currency nvarchar(20),
Exchange float)

-- Gold Products table creation --
IF OBJECT_ID('gold.Products', 'U') IS NOT NULL
DROP TABLE gold.Products
CREATE TABLE gold.Products
(ProductKey int PRIMARY KEY,
ProductName nvarchar(100),
Brand nvarchar(25),
Color nvarchar(25),
UnitCostUSD float,
UnitPriceUSD float,
SubcategoryKey int,
Subcategory nvarchar(50),
CategoryKey int,
Category nvarchar(35)) 

-- Gold Sales table creation --
IF OBJECT_ID('gold.Sales', 'U') IS NOT NULL
DROP TABLE gold.Sales
CREATE TABLE gold.Sales
( 
SalesKey int IDENTITY(1,1) PRIMARY KEY,
OrderNumber int,
LineItem int,
OrderDate date,
DeliveryDate date,
CustomerKey int,
StoreKey int,
ProductKey int,
Quantity int,
CurrencyCode nvarchar(10),
SalesAmount DECIMAL(18,2),
Cost DECIMAL(18,2),
Profit DECIMAL(18,2),

CONSTRAINT FK_Sales_Customer
    FOREIGN KEY (CustomerKey)
    REFERENCES gold.Customers(CustomerKey),

CONSTRAINT FK_Sales_Store
    FOREIGN KEY (StoreKey)
    REFERENCES gold.Stores(StoreKey),

CONSTRAINT FK_Sales_Product
    FOREIGN KEY (ProductKey)
    REFERENCES gold.Products(ProductKey)

)

-- Gold Stores table creation--
IF OBJECT_ID('gold.Stores', 'U') IS NOT NULL
DROP TABLE gold.Stores
CREATE TABLE gold.Stores
(StoreKey int PRIMARY KEY,
Country nvarchar(20),
State nvarchar(30),
SquareMeters int,
OpenDate date)