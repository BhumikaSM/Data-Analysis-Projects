## 📊 eCommerce Data Analysis & Dashboard Project
This project presents a comprehensive analysis and dashboard creation using an eCommerce dataset. The main objective is to extract actionable insights about customer behavior, sales performance, return trends, and product performance using tools such as Excel, SQL, Python, and Power BI.

## 📁 Dataset
The dataset used in this project was sourced from Kaggle:
Ecommerce Data on Kaggle
https://www.kaggle.com/datasets/carrie1/ecommerce-data
(This is a transnational data set which contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers)
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
  - Setting up environment using python libraries
  - Exploratory Data Analysis
  - top selling products
  - Revenue over time (visualizing using matplotlib)
  - Recency, Frequency, and Monetary (RFM) analysis using Python
  - Return Analysis (Using Matplotlib)
  - 

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

6. Return Rate Percentage by Country
    Visual: Stacked line Chart

    Return Rate (%) = 
      DIVIDE(
         CALCULATE(COUNTROWS(Sales), Sales[TransactionType] = "Returns"),
         CALCULATE(COUNTROWS(Sales), Sales[TransactionType] IN {"Sales", "Returns"})
      ) * 100

7. Top Selling Products
   Visual: Bar Chart
   Displays top products by Total Price.

8. Invoice Date Analysis
   Extracted Month and Day Name for Further Analysis.

9. Daily Sales  Analysis
   Visual: Area Chart

   Daily sales trend and spike pattern analysis.

10. Monthly Sales  Analysis
   Visual: Column Chart

   Monthly sales trend and spike pattern analysis.


11. Slicers 
   Country-wise dropdown Slicers

12. Buttons
    Page Navigation using pages

## 📌 Key Learnings & Insights
✅ Customers from the UK accounted for the majority of transactions.

✅ 91.02% of customers are registerd and 8.98% of customers are unregisterd(guest customers)

✅ A significant number of returns were observed, especially in USA.

✅ In the month of August high transactions are observed

✅ Based on Daily sales analysis  Thursday and Friday transactions are more.

✅ 57.03% customers InvoiceDate is missing and 42.97% have valid InvoiceDate

✅ The top-selling products could be targeted for promotions.

✅ RFM segmentation helps in identifying loyal vs. at-risk customers.

📦 Tools Used
- Excel :	Initial cleaning and exploration
- PostgreSQL(PGAdmin)	: Data cleaning, transformation, and aggregation
- Python : (Pandas, Matplotlib)	Advanced analysis, RFM, visualizations
- Power BI	: Dashboard building and interactive visualization
