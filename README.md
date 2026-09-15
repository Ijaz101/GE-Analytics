# 📊 Global Electronics Sales Analytics Dashboard

## 📌 Project Overview

**Global Electronics Sales Analytics Dashboard** is an end-to-end **Data Analytics and Business Intelligence project** built to analyze the sales performance of a Global Electronics retailer.
Global Electronics is a retail business with a diversified product portfolio and an international customer base. The company operates across multiple product categories, countries, and geographic markets.

**Computers are the company's strongest category, contributing roughly one-third of revenue**. Together, Computers and Home Appliances account for more than half of the company's total revenue, making these categories particularly important when evaluating overall business performance.

Global Electronics operates across multiple geographic markets, with sales distributed across North America, Europe, and Australia.

North America is the company's largest geographic market, generating approximately $34.60M in revenue. **The United States is the largest individual country market**, contributing approximately $29.87M, while Canada contributes approximately $4.72M.

The business is experiencing a **significant year-over-year decline in sales**, particularly in the most recent periods. This project focuses on understanding **where the decline is happening, which products and markets are most affected, how customer behavior is changing, and where the business can focus its recovery efforts**.

## 🎯 Business Problem

Global Electronics has experienced a substantial decline in sales performance compared with previous years.

Management needs to understand:

* How severe is the sales decline?
* When did the decline become significant?
* Which product categories are contributing to the decline?
* Which products and brands are losing sales?
* Which countries and markets are most affected?
* How has customer purchasing behavior changed?
* Is the decline affecting profitability?
* Which areas should management prioritize for recovery?

This dashboard provides a centralized analytical view to help answer these questions.

---

# 📈 Key Business Insights

### 🔻 Significant Year-over-Year Sales Decline

Sales performance has weakened considerably compared with previous years.

Key Note: Dataset is available for period Jan 2016- Feb 2021

* **2020 sales were approximately 49% lower than 2019**


 ![Yearly Trend](Dashboard_Screenshots/Yearly_Sales_Trend.png)

* The latest 12-month period, **March 2020–February 2021**, generated approximately **$6.9M** compared with **$18.5M** in the previous comparable 12-month period.
* This represents an approximate **62% year-over-year decline** in the latest 12-month period.

![Sales Trend for 2020](Dashboard_Screenshots/Sales_Trend_2020.png)


* **January–February 2021 sales were approximately 75% lower than January–February 2020**
  
![Sales Trend for 2021](Dashboard_Screenshots/Jan-Feb_Sales_Trend.png)

The trend indicates that the decline is not limited to a single month or isolated period, making further analysis of products, customers, and markets important.

### 📦 Product & Category Performance

  The overall sales decline becomes more meaningful when performance is examined at the category level.

**Computers are the company's strongest category, contributing roughly one-third of total revenue. Together, Computers and Home Appliances account for more than half of total revenue.**
   
   Because these categories represent a large share of the company's revenue, their year-over-year performance has a significant impact on the overall business

![Sales by Category](Dashboard_Screenshots/Sales_by_Category.png)

**Category-Level Sales Decline**

Comparing current-year sales with the equivalent previous-year period shows that the decline is broad-based across major product categories.

The largest decline in absolute sales value came from Computers. Sales decreased from approximately $7.10M to $2.84M, resulting in a loss of approximately $4.26M in revenue.

* Computers: largest business impact because of its high revenue base and approximately $4.26M decline.
* Home Appliances: significant decline of approximately $1.87M.
* Cameras & Camcorders: approximately $1.50M decline.
* Cell Phones: approximately $1.44M decline.
* Audio: highest percentage decline, but a smaller absolute revenue impact.

![Category Comparison ](Dashboard_Screenshots/Category_Comparison.png)


### 🔎 Product Performance

The category-level analysis identifies where the largest revenue declines are occurring. To understand **what is driving those category-level declines**, product performance was analyzed across the five highest-revenue categories: **Computers, Home Appliances, Cameras & Camcorders, Cell Phones, and TV & Video.**

The analysis focuses on the **top five products within each major category.** 
The comparison shows that the decline in overall sales is reflected across many of the highest-performing products within the major categories.

**Computers:** The category experienced the largest absolute sales decline, and its leading products contributed significantly to this reduction. WWI Desktop PC2.33 X2330 Black decreased from approximately $172K to $64K, a decline of $108K (-62.8%). Adventure Works Desktop PC2.33 XD233 Black declined from $165K to $38K, a reduction of $127K (-77.0%). This indicates that the decline in Computers was not driven by a single product but was spread across several major desktop products.


![Computers Yearly Performance ](Dashboard_Screenshots/Computer_Yearly_Comparison.png)


**Home Appliances:** The leading products also experienced substantial declines. Contoso Water Heater 7.2GPM X1800 White fell from approximately $75K to $3K, a reduction of $72K (-96.0%). Contoso Water Heater 7.2GPM X1800 Grey declined from $55K to $21K, down $34K (-61.8%). These declines help explain the significant year-over-year reduction observed in the Home Appliances category.


![Home Appliance Yearly Performance ](Dashboard_Screenshots/Home_Appliance_Yearly_Comparison.png)

**Cameras & Camcorders:** The category shows a more mixed pattern. Several leading products declined sharply, including Fabrikam Trendsetter 1/3" 8.5mm X200 Black, which fell from approximately $54K to $3K, a decline of $51K (-94.4%). However, some products performed better than the previous year. Fabrikam Independent Filmmaker 1/3" 8.5mm X200 Grey increased from $17K to $34K, an increase of $17K (+100%). This suggests that the category decline was concentrated among specific products rather than being uniform across the entire category.


![Cameras & Camrecorders Yearly Performance ](Dashboard_Screenshots/Cameras_and_Camrecorders_Yearly_Comparison.png)


**Cell Phones:** The leading phone products show a broad downward trend. The Phone Company Touch Screen Phone 1600 TFT-2.2" L200 Black declined from approximately $33K to $3K, a reduction of $30K (-90.9%). Other leading Touch Screen Phone models also experienced significant declines, indicating that weaker product-level performance was an important contributor to the category's overall decline.



![Cell Phones Yearly Performance ](Dashboard_Screenshots/Cell_Phones_Yearly_Comparison.png)



**TV & Video:** The category shows some of the most significant product-level reductions. Adventure Works 52" LCD HDTV X590 White decreased from approximately $174K to $6K, a reduction of $168K (-96.6%). The Black version declined from $136K to $35K, down $101K (-74.3%). These large reductions among high-revenue products help explain the substantial decline observed within the category.


![Tv & Video Yearly Performance ](Dashboard_Screenshots/Tv_and_Video_Yearly_Comparison.png)



Overall, the product-level analysis shows that the sales decline was not caused by a single product. Instead, multiple high-performing products across the major categories experienced substantial year-over-year reductions.

The analysis also reveals important exceptions, particularly within Cameras & Camcorders, where several products increased their sales despite the broader category decline. This highlights an opportunity to investigate what differentiates these better-performing products from those experiencing significant declines.

This drill-down connects the analysis from category performance to individual product performance, helping identify the products that contributed most to the company's overall sales decline and providing a starting point for deeper investigation into potential drivers such as product demand, pricing, availability, or product mix.

### 🌍 Geographic Performance

Country and regional analysis helps identify:

* Markets experiencing the largest decline
* High-revenue markets requiring protection
* Geographic areas with potential recovery opportunities
* Differences in sales performance across regions

### 👥 Customer Performance

Customer analytics provides visibility into:

* Customer segments
* Customer purchasing behavior
* Average order value
* Orders per customer
* Repeat customer activity
* Changes in customer contribution to sales

This helps determine whether declining revenue is associated with **fewer customers, lower purchasing frequency, lower order value, or a combination of factors**.

### 💰 Profitability

Sales performance is analyzed alongside cost and profit metrics to understand whether declining revenue is also creating pressure on profitability.

This allows the business to distinguish between:

> **Revenue decline** vs. **profitability decline**

and prioritize actions that can improve both sales and business value.

---

# 🔎 Analytical Approach

The project follows a structured analytical process:

```text
Raw Business Data
       ↓
SQL Data Warehouse
       ↓
Data Quality & Validation
       ↓
Star Schema
       ↓
Power BI Data Model
       ↓
DAX Measures & Time Intelligence
       ↓
Interactive Dashboard
       ↓
Business Insights
       ↓
Recovery Recommendations
```

The analysis focuses heavily on **like-for-like year-over-year comparisons** so that business performance is evaluated over comparable periods.

For example:

| Analysis Period   | Comparison                             |
| ----------------- | -------------------------------------- |
| 2020              | 2020 vs 2019                           |
| Jan–Feb 2021      | Jan–Feb 2021 vs Jan–Feb 2020           |
| Mar 2020–Feb 2021 | Mar 2020–Feb 2021 vs Mar 2019–Feb 2020 |

This provides a more meaningful view of business performance than comparing periods with different lengths.

---

# 📊 Dashboard Pages

## 1. Executive Overview

Provides a high-level view of overall business performance.

### Key KPIs

* Total Sales
* Total Profit
* Total Orders
* Profit Margin
* Year-over-Year Sales Change
* Year-over-Year Profit Change
* Previous-Year Performance

### Visual Analysis

* Monthly Sales Trend
* Monthly Profit Trend
* Sales by Category
* Top Countries by Sales
* Year-over-Year Performance

**Purpose:** Quickly understand the overall health of the business and identify whether performance is improving or declining.

---

## 2. Product Analytics

Provides a detailed analysis of product and category performance.

### Analysis Includes

* Sales by Category
* Profit by Category
* Sales by Brand
* Product Performance
* Product Pareto Analysis
* Category Year-over-Year Performance
* Profit Margin by Category

**Purpose:** Identify products and categories that are contributing to the sales decline and determine where recovery efforts could have the greatest impact.

---

## 3. Customer Analytics

Analyzes customer behavior and customer contribution.

### Analysis Includes

* Sales by Customer Segment
* Sales by Age Group
* Sales by Gender
* Total Customers
* Average Order Value
* Repeat Customer Rate
* Orders per Customer
* Customer Sales Contribution
* Geographic Customer Analysis

**Purpose:** Understand whether changes in customer behavior are contributing to declining sales.

---


# 🏗️ Data Warehouse Architecture

The SQL Server data warehouse follows a **Medallion Architecture**:

```text
                Source CSV Files
                       │
                       ▼
              ┌─────────────────┐
              │  Bronze Layer   │
              │ Raw Data        │
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │  Silver Layer  │
              │ Cleaned Data   │
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │   Gold Layer   │
              │ Business Model │
              └────────┬────────┘
                       │
                       ▼
                  Power BI
```

### Bronze Layer

Stores the raw source data with minimal transformation.

### Silver Layer

Handles:

* Data cleansing
* Standardization
* Data type corrections
* Duplicate checks
* Data validation
* Transformation logic

### Gold Layer

Provides business-ready analytical tables optimized for reporting and Power BI.

---

# ⭐ Data Model

The Power BI model follows a **Star Schema**.

```text
                    Dim_Customers
                         │
                         │
Dim_Date ──────── Fact_Sales ──────── Dim_Products
                         │
                         │
                    Dim_Stores
                         │
                         │
                Dim_ExchangeRates
```

### Fact Table

**Fact_Sales**

Contains transactional information including:

* Order Number
* Order Date
* Delivery Date
* Customer Key
* Store Key
* Product Key
* Quantity
* Sales Amount
* Cost
* Profit
* Delivery Status
* Customer Segment

### Dimension Tables

* **Dim_Customers**
* **Dim_Products**
* **Dim_Stores**
* **Dim_Date**
* **Dim_ExchangeRates**

The star schema separates business events from descriptive attributes and provides an efficient structure for analytical reporting.

---

# 🧮 DAX & Time Intelligence

A major component of the project is the use of **dynamic DAX measures** for year-over-year analysis.

### Core Measures

```DAX
Total Sales = 
SUM(Fact_Sales[SalesAmount])
```

Additional measures include:

* Total Cost
* Total Profit
* Profit Margin
* Total Orders
* Sales CY
* Sales LY
* YoY Sales Change %
* YoY Profit Change %
* YoY Orders Change %
* Average Order Value
* Repeat Customer Rate
* Orders per Customer

### Dynamic Period Comparison

The dashboard supports different comparison scenarios, including:

* Full-year comparisons
* Partial-year comparisons
* Month-level comparisons
* Latest available rolling periods
* Same-period-previous-year analysis

This allows the dashboard to remain useful as different years, months, and reporting periods are selected.

---

# 🧹 Data Quality

Data quality checks were performed throughout the warehouse pipeline.

### Validation Includes

* Duplicate records
* Null values
* Data type validation
* Referential integrity
* Fact and dimension consistency
* Record-count validation
* Transformation validation
* Business-rule checks

The goal is to ensure that the numbers presented in Power BI can be traced back to validated warehouse data.

---

# 🐞 Problem Solving & Debugging

One of the important lessons from this project was that **unexpected Power BI results are not always caused by DAX**.

During development, a KPI was producing unexpected results because a hidden **Year filter/slicer** was affecting the report page.

The issue was resolved by inspecting the report's filter context rather than immediately rewriting the DAX.

### Key Lesson

> **When a Power BI result looks wrong, validate the filter context, model relationships, and visual configuration before assuming the DAX is incorrect.**

This project therefore demonstrates not only DAX development, but also practical **Power BI debugging and analytical validation**.

---

# 📁 Repository Structure

```text
Global-Electronics-Analytics/
│
├── Datasets/
│   ├── Customers.csv
│   ├── Data_Dictionary.csv
│   ├── ExchangeRates.csv
│   ├── Products.csv
│   ├── Sales.csv
│   └── Stores.csv
│
├── SQL/
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Bronze.sql
│   ├── 03_Load_Bronze.sql
│   ├── 04_Quality_Checks.sql
│   ├── 05_Create_Silver.sql
│   ├── 06_Quality_Checks.sql
│   ├── 07_Load_Silver.sql
│   ├── 08_Create_Gold.sql
│   └── 09_Load_Gold.sql
│
├── Power BI/
│   ├── GlobalElectronics.pbix
│   ├── DAX_Measures.md
│   └── Data_Model.png
│
├── Dashboard_Screenshots/
│   ├── Executive_Summary.png
│   ├── Product_Analytics.png
│   ├── Customer_Analytics.png
│   └── Business_Insights.png
│
└── README.md
```

---

# 🖼️ Dashboard Preview

### Executive Overview

![Executive Summary](Dashboard_Screenshots/Executive_Overview.png)

### Product Analytics

![Product Analytics](Dashboard_Screenshots/Product_Overview.png)

### Customer Analytics

![Customer Analytics](Dashboard_Screenshots/Customer_Overview.png)

---

# 🛠️ Technical Skills Demonstrated

### Data Engineering

* SQL Server
* T-SQL
* Data Warehouse Development
* Medallion Architecture
* ETL / ELT
* Data Transformation
* Data Quality Validation

### Data Modeling

* Star Schema
* Fact & Dimension Modeling
* Relationships
* Date Dimension
* Analytical Data Modeling

### Power BI

* Power BI Desktop
* Interactive Dashboards
* KPI Design
* Drill-down Analysis
* Slicers & Filters
* Data Visualization
* Report Design

### DAX

* Measures
* CALCULATE
* FILTER Context
* DATEADD
* DATESBETWEEN
* Time Intelligence
* Year-over-Year Analysis
* Dynamic Period Comparison
* KPI Logic

### Analytics

* Sales Analysis
* Profitability Analysis
* Customer Analytics
* Product Analytics
* Geographic Analysis
* Trend Analysis
* Business Performance Analysis
* Root-Cause Analysis
* Business Recommendations

---

# 🎯 Project Outcomes

This project demonstrates an end-to-end analytical workflow:

**Raw Data → Data Warehouse → Data Quality → Data Model → DAX → Dashboard → Insights → Business Recommendations**

The final solution provides management with a structured way to:

* Monitor declining sales performance
* Compare performance against previous periods
* Identify high-impact products and categories
* Analyze customer behavior
* Evaluate geographic performance
* Monitor profitability
* Prioritize recovery opportunities
* Track performance over time

The project demonstrates how **data analytics can move beyond reporting historical numbers and support practical business decision-making.**

---

# 📚 Key Learning

One of the most important lessons from this project was the importance of **analytical validation**.

A dashboard can contain technically correct calculations but still produce misleading business conclusions if the comparison periods are not equivalent.

Therefore, meaningful business analysis requires:

```text
Correct Data
     +
Correct Model
     +
Correct Filter Context
     +
Correct Time Comparison
     +
Business Context
     =
Reliable Insight
```

This principle was central to the development of the Global Electronics Analytics Dashboard.

---

# 👤 Author

**Ijas Ahamed**

* LinkedIn: https://www.linkedin.com/in/ijas-ahamed-a134aa123/
* GitHub: https://github.com/your-username

---

## ⭐ If you find this project useful

Feel free to explore the SQL scripts, Power BI model, DAX measures, and dashboard screenshots to understand the complete analytics workflow.
