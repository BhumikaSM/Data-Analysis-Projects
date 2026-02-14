                  -------CHANGES OVER TIME----------
SELECT 
    to_char(DATE_TRUNC('month', order_date),'YYYY-mon') AS order_month,
    SUM(sales_amount) AS total_amount,
    COUNT(customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY to_char(DATE_TRUNC('month', order_date),'YYYY-mon')
ORDER BY order_month ASC
