## 📊 eCommerce Data Analysis & Dashboard Project
This project presents a comprehensive analysis and dashboard creation using an eCommerce dataset. The main objective is to extract actionable insights about customer behavior, sales performance, return trends, and product performance using tools such as Excel, SQL, Python, and Power BI.

## 📁 Dataset
The dataset used in this project was sourced from Kaggle:
Ecommerce Data on Kaggle

It contains over 500,000 records of transactions from an online UK-based retailer, including:

- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

## 🧮 Data Cleaning (Excel)
Issues Addressed:
Handled missing values: particularly missing InvoiceDate and CustomerID.

- Removed duplicate rows and null records.

- Converted data types for InvoiceDate, Quantity, and UnitPrice.

- Removed transactions with negative or zero values (except returns).
  
- Calculated Total Price (Total Price = Quantity × UnitPrice)


## 📊 Data Analysis 


## SQL: 
Key Measures and Metrics Created:
-  Top 10 selling products by total revenue:
-  total revenue per day:
-  total quantity  sold per day:
-  Sales by country
-  Top customers by revenue:
-  Detecting returns or negative transactions:
-  Valid transactions only (filtering returns):
-  Monthly Sales Trend:
-  Basket Size (Average quantity per order)
-  Average Order Value (AOV)(quantity wise)
-  Average Order Value (AOV)(Total price)
-  Most Returned Products
-  Customer Segmentation by Spend:
-  Top Products Per Country:
-  Day of Week Sales Trend-

 ## Python
- Recency, Frequency, and Monetary (RFM) analysis using Python

- Top-selling products by sales volume and revenue
- Monthly Sales trends

- Daily sales trends

- Country-wise performance

## 📈 Power BI Dashboard
Pages and Visuals Created:
1. Dashboard Overview (Page Title Displayed)
Contains a dynamic page title using a text box for branding and clarity.

2.KPI cards
- Total orders (count of distinct InvoiceNo)
- Total Items Sold (Sum of Quantity)
- Unique Customers (Distinct Count Of CustmerID)
- Total Revenue (Sum Of Total Revenue)
visual: New Cards

3. Customer Type Distribution
Displays counts of Unique vs. Returning customers.
Visual:Pie Chart

4.Invoice Date Status
Displays Counts of Missing and Valid Invoice date

5. Sales vs Returns
Visual: Area Chart

Shows comparison between total sales and return quantities.

4. Return Rate Percentage by Country
Visual: Stacked line Chart

Return Rate (%) = 
DIVIDE(
    CALCULATE(COUNTROWS(Sales), Sales[TransactionType] = "Returns"),
    CALCULATE(COUNTROWS(Sales), Sales[TransactionType] IN {"Sales", "Returns"})
) * 100

5. Top Selling Products
Visual: Bar Chart

Displays top products by Total Price.

6. Invoice Date Analysis
Extracted Month and Day Name for Further Analysis.

7.Daily Sales  Analysis
Visual: Area Chart

Daily sales trend and spike pattern analysis.

7.Monthly Sales  Analysis
Visual: Column Chart

Monthly sales trend and spike pattern analysis.


9. Slicers 
Country-wise dropdown Slicers

10.Buttons
Page Navigation using pages

## 📌 Key Learnings & Insights
Customers from the UK accounted for the majority of transactions.

A significant number of returns were observed, especially in certain countries.

The top-selling products could be targeted for promotions.

RFM segmentation helps in identifying loyal vs. at-risk customers.

📦 Tools Used
- Excel :	Initial cleaning and exploration
- PostgreSQL(PGAdmin)	: Data cleaning, transformation, and aggregation
- Python : (Pandas, Matplotlib)	Advanced analysis, RFM, visualizations
- Power BI	: Dashboard building and interactive visualization
