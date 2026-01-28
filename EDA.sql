-- Average VS Total Yearly Revenue

SELECT
SUM(price) Total_revenue,
AVG(price) AS Average_revenue,
order_year
FROM orders_staging
GROUP BY order_year;

-- Average VS Total Monthly Revenue

WITH monthly_rev AS (
SELECT
SUM(price) total_revenue,
order_month
FROM orders_staging
GROUP BY order_month
), monthly_avg AS (
SELECT
ROUND(AVG(total_revenue)) AS monthly_average
FROM monthly_rev
)
SELECT
*
FROM monthly_rev
JOIN monthly_avg mavg;

-- Monthly VS Yearly AOV

WITH AOV_monthly AS (
SELECT 
ROUND(AVG(price),2) AS AOV_month,
order_month
FROM orders_staging
GROUP BY order_month
ORDER BY 1 DESC
),
AOV_yearly AS (
SELECT
AVG(AOV_by_years) AOV_years_total
FROM (
SELECT
ROUND(AVG(price),2) AS AOV_by_years,
order_year
FROM orders_staging
GROUP BY order_year
) AS AOV_years)
SELECT 
AOV_month,
AOV_years_total,
am.order_month
FROM AOV_monthly am
JOIN AOV_yearly ;

-- 2022: Monthly Total VS Average

WITH total_by_month AS (
SELECT 
SUM(price) AS total_monthly,
order_month
FROM orders_staging
WHERE order_year = '2022'
GROUP BY order_month
),
avg_by_month AS (
SELECT
ROUND(AVG(price)) AS avg_by_month_total,
order_month
FROM orders_staging
WHERE order_year = '2022'
GROUP BY order_month
)
SELECT
total_monthly,
avg_by_month_total,
tbm.order_month
FROM total_by_month tbm
JOIN avg_by_month abm
	ON tbm.order_month = abm.order_month


-- Monthly Order Count

WITH order_count AS (
SELECT
COUNT(*) monthly_order_count,
order_month
FROM orders_staging
GROUP BY order_month
),
avg_order_count AS (
SELECT
ROUND(AVG(monthly_order_count)) AS average_order_count
FROM order_count
)
SELECT 
monthly_order_count,
average_order_count,
oc.order_month,
order_year
FROM order_count oc
JOIN orders_staging os
	ON oc.order_month = os.order_month
JOIN avg_order_count;
    
-- Total Revenue by Product

SELECT
SUM(price),
product
FROM orders_staging
GROUP BY product;
    
-- Quarterly Average by Product

WITH avg_per_quarter AS (
SELECT
AVG(price) quartarly_average,
product,
`quarter`,
order_year
FROM orders_staging
GROUP BY product, `quarter`, order_year
), 
avg_per_quarter_total AS (
SELECT
AVG(quartarly_average) AS quartarly_average_total
FROM avg_per_quarter
)
SELECT
quartarly_average_total
quartarly_average,
product,
`quarter`,
order_year
FROM avg_per_quarter
JOIN avg_per_quarter_total;

-- Monthly AOV by Loyalty Status

SELECT
AVG(price) AOV,
order_month,
(CASE WHEN
loyalty_member = '1' THEN 'Member ' ELSE 'Not Member'
END) AS loyalty_status
FROM orders_staging os
JOIN customers_staging c
	ON os.customer_id = c.id
GROUP BY loyalty_member, order_month
ORDER BY AOV DESC;

-- Monthly Order Number by Loyalty Status

SELECT
COUNT(os.id) order_count,
order_month,
(CASE WHEN
loyalty_member = '1' THEN 'Member ' ELSE 'Not Member'
END) AS loyalty_status
FROM orders_staging os
JOIN customers_staging c
	ON os.customer_id = c.id
GROUP BY loyalty_member, order_month
ORDER BY order_count DESC;

-- Refund Percentage by Product

WITH Count_refunded_per_year AS (
SELECT
COUNT(refunded) AS total_refunds,
order_year,
product
FROM order_status_staging oss
JOIN orders_staging os
	ON oss.order_id = os.id
WHERE refunded = '1'
GROUP BY product, order_year
ORDER BY product
), total_count_per_year AS (
SELECT
COUNT(refunded) AS total_count,
order_year,
product
FROM order_status_staging oss
JOIN orders_staging os
	ON oss.order_id = os.id
GROUP BY product, order_year
ORDER BY product
)
SELECT
ROUND((total_refunds / total_count) * 100),
rp.order_year,
rp.product
FROM Count_refunded_per_year rp
JOIN total_count_per_year tc
	ON rp.order_year = tc.order_year
	AND rp.product = tc.product;
       
-- Total Orders VS Total Refunds by Product

WITH Count_refunded_per_year AS (
SELECT
COUNT(refunded) AS total_refunds,
order_year,
product
FROM order_status_staging oss
JOIN orders_staging os
	ON oss.order_id = os.id
WHERE refunded = '1'
GROUP BY product, order_year
ORDER BY product
), total_count_per_year AS (
SELECT
COUNT(refunded) AS total_count,
order_year,
product
FROM order_status_staging oss
JOIN orders_staging os
	ON oss.order_id = os.id
GROUP BY product, order_year
ORDER BY product
)
SELECT 
total_count,
total_refunds,
cr.order_year,
cr.product
FROM Count_refunded_per_year cr
JOIN total_count_per_year tc
ON cr.product = tc.product
AND cr.order_year = tc.order_year;

-- Annual Regional Revenue

SELECT
SUM(price) AS total_revenue,
order_year,
region
FROM orders_staging os
JOIN customers_staging cs
	ON os.customer_id = cs.id 
JOIN geo_lookup_staging gl
	ON cs.country_code = gl.country
WHERE order_year = '2019' OR order_year = '2022'
GROUP BY order_year, region
ORDER BY order_year;

-- Annual Regional Revenue: 2022

SELECT
SUM(price) AS total_revenue,
order_year,
region
FROM orders_staging os
JOIN customers_staging cs
	ON os.customer_id = cs.id 
JOIN geo_lookup_staging gl
	ON cs.country_code = gl.country
WHERE order_year = '2019'
GROUP BY order_year, region
ORDER BY order_year; 

-- Annual Net Sales

WITH total_revenue AS (
SELECT
SUM(price) AS total_sales,
order_year
FROM orders_staging
GROUP BY order_year
), 
total_refunded_revenue AS (
SELECT
SUM(price) AS total_refunded,
order_year
FROM orders_staging os
JOIN order_status_staging oss
	ON os.id = oss.order_id
WHERE refunded = 1
GROUP BY order_year
)
SELECT
total_sales,
total_refunded,
(total_sales - total_refunded) AS net_sales ,
tr.order_year
FROM total_revenue tr
JOIN total_refunded_revenue trr
	ON tr.order_year = trr.order_year
    
-- Quarterly Marketing Channel Utilization Percentage

WITH quartarly_channel_count AS (
SELECT
COUNT(marketing_channel) AS channel_count,
marketing_channel,
`quarter`
FROM customers_staging cs
JOIN orders_staging os
	ON cs.id = os.customer_id 
WHERE marketing_channel <>'Unknown'
GROUP BY `quarter`, marketing_channel
ORDER BY `Quarter` DESC, channel_count DESC
), total_channel_count AS (
SELECT
SUM(channel_count) AS total_count,
marketing_channel
FROM quartarly_channel_count
GROUP BY marketing_channel
)
SELECT
ROUND((channel_count / total_count) * 100,2) AS Channel_utilization_ratio,
tc.marketing_channel,
`quarter`
FROM total_channel_count tc
JOIN quartarly_channel_count qc
	ON tc.marketing_channel = qc.marketing_channel
GROUP BY marketing_channel, `quarter`
