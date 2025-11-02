🛒 Quantium Retail Analytics – Task 1 

This project replicates Quantium’s Data Analytics Virtual Experience (Task 1) in Python.
The goal is to perform retail strategy analysis using transaction and customer data to understand:

Which customer segments drive chip sales 🥔

What products and pack sizes are preferred by key segments

How pricing, purchase quantity, and demographics influence revenue

This analysis was implemented entirely in Python (Jupyter Notebook), replicating the official R-based Quantium solution.

⚙️ Tools and Libraries Used

Python 3.13

pandas — data manipulation

matplotlib, seaborn — visualizations

numpy — numerical operations

scipy.stats — hypothesis testing (t-test)

🧹 Step 1: Data Cleaning and Preparation
Task	Description	Outcome
Fix date format	Converted Excel serial dates (e.g., 43390) to real dates using pd.to_datetime(..., origin='1899-12-30')	Dates correctly formatted (Jul 2018 – Jun 2019)
Remove salsa products	Excluded “Salsa” products from PROD_NAME since they’re not chips	Dataset contains only chip transactions
Handle outliers	Detected 2 transactions with 200 chip packets from one customer → removed commercial customer	Clean dataset with valid retail transactions
Missing date check	Created full date sequence (2018-07-01 → 2019-06-30) and found missing date	Missing date: 25 Dec 2018 (Christmas)
Extract new features	Extracted PACK_SIZE and BRAND from PROD_NAME	Enabled product-level insights
Standardized brand names	Merged duplicates (e.g., “RED” → “RRD”, “Dorito” → “Doritos”)	Consistent brand classification
📆 Step 2: Transaction Trend Analysis

Counted number of transactions per day.

Verified continuous sales across the year.

Found a single missing day (25th December 2018) — logical as most stores close on Christmas Day.

📈 Insight:

Daily transactions were stable across months with minor festive spikes in December 2018 and May 2019.

👨‍👩‍👧‍👦 Step 3: Merge Transaction & Customer Data

Performed a left join on customer loyalty card numbers:

merged_data = pd.merge(transaction_data, customer_data, on='LYLTY_CARD_NBR', how='left')


✅ Verified:

No duplicate rows

Few unmatched customers (missing details checked via .isnull().sum())

💰 Step 4: Sales Segmentation Analysis
Sales by Lifestage and Premium Category
Segment Dimension	Key Finding
Highest Sales	Budget – Older Families
Next Major Segments	Mainstream – Young Singles/Couples and Mainstream – Retirees
Drivers of Sales	Larger purchase quantity per customer rather than higher price per unit

📊 Visualization: Bar chart comparing total sales by LIFESTAGE × PREMIUM_CUSTOMER.

🧾 Step 5: Customer Behavior Insights
a) Average Units per Customer

Older and young families buy more chips per customer, explaining higher sales.

b) Average Price per Unit

Used:

merged_data['price_per_unit'] = merged_data['TOT_SALES'] / merged_data['PROD_QTY']


Observation:

Mainstream Midage and Young Singles/Couples pay slightly more per pack than Budget or Premium customers.

🧪 Step 6: Hypothesis Testing (t-test)

Objective:
Test if Mainstream customers pay significantly higher prices per unit compared to Premium and Budget customers.

from scipy.stats import ttest_ind
ttest_ind(mainstream['price_per_unit'], premium['price_per_unit'], equal_var=False)


Result:

p-value = 0.0 → Statistically significant difference.

Mainstream singles/couples pay more per unit than others.

🔍 Step 7: Deep Dive – Target Segment Analysis

Focus Segment: Mainstream Young Singles/Couples

a) Brand Preference

These customers prefer:

Doritos, Kettle, and Twisties chips.

Strong affinity toward bold flavors (entertainment/party occasions).

b) Pack Size Preference

They prefer 175g–200g packs (medium size), suitable for sharing but not bulk buying.

📈 Visualized both brand and pack size preferences vs the rest of the population.

🧠 Step 8: Key Insights Summary
Insight	Interpretation
🏡 Budget Older Families spend the most on chips.	Family-size packs, value-driven purchases.
💼 Mainstream Singles/Couples pay the most per unit.	Likely impulse buyers / convenience shoppers.
🎁 Premium Customers buy fewer chips overall.	Possibly prefer healthier or premium snack alternatives.
📅 Christmas Day (25 Dec) had no transactions.	Expected store closure.
🛍️ Top Brands: Kettle, Doritos, Twisties, Smiths	High engagement among young demographics.
🚀 Step 9: Recommendations

Target “Mainstream Singles/Couples” with mid-sized packs (175g–200g) via digital ads or bundle offers.

Promote family-size packs (≥250g) to Budget Older Families through supermarket promotions.

Introduce healthier or premium chips for Premium Customers to increase engagement.

Run campaigns near festive peaks (Dec–May) to capture demand surges.

💾 Step 10: Save Final Dataset
merged_data.to_csv("QVI_data_cleaned.csv", index=False)


Contains all cleaned and enriched transaction records ready for further analysis.

🧭 Final Outcome

✅ Cleaned and enriched dataset
✅ Full year’s transaction analysis
✅ Segmented insights by customer behavior
✅ Hypothesis validation via t-test
✅ Actionable business recommendations
