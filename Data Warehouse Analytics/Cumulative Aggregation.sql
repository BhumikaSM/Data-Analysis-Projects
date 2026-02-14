                     ----------------CUMULATIVE AGGREGATION--------------
select t.order_date,t.total_sales,
sum(total_sales) over( order by order_date) as running_total_sales,
round(avg(avg_price) over( order by order_date)) as moving_avg_price
from
(
SELECT 
    DATE_TRUNC('month', order_date)::date AS order_date,
    SUM(sales_amount) AS total_sales,
	avg(price) as avg_price
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATE_TRUNC('month', order_date)::date
order BY DATE_TRUNC('month', order_date)::date
) t

