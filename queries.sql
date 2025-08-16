-- Total spending per customer
SELECT 
    c.first_name,
    c.last_name,
    SUM(o.order_amount) AS total_spent,
    COUNT(o.order_id) AS total_orders,
    AVG(o.order_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

-- RFM Segmentation
WITH rfm AS (
    SELECT 
        c.customer_id,
        MAX(o.order_date) AS last_purchase,
        COUNT(o.order_id) AS frequency,
        SUM(o.order_amount) AS monetary
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
)
SELECT 
    customer_id,
    CASE 
        WHEN julianday('now') - julianday(last_purchase) < 30 THEN 'Recent'
        WHEN julianday('now') - julianday(last_purchase) BETWEEN 30 AND 90 THEN 'Dormant'
        ELSE 'Churned'
    END AS recency_segment,
    CASE 
        WHEN frequency > 5 THEN 'Frequent'
        WHEN frequency BETWEEN 2 AND 5 THEN 'Moderate'
        ELSE 'Rare'
    END AS frequency_segment,
    CASE 
        WHEN monetary > 500 THEN 'High Value'
        WHEN monetary BETWEEN 100 AND 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS monetary_segment
FROM rfm;



-- Ranking customers by total spend (High-Value Customers)
WITH customer_spend AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(o.order_amount) AS total_spent,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    first_name,
    last_name,
    total_spent,
    total_orders,
    RANK() OVER (ORDER BY total_spent DESC) AS spend_rank,
    CASE
        WHEN RANK() OVER (ORDER BY total_spent DESC) = 1 THEN 'Top Customer'
        WHEN RANK() OVER (ORDER BY total_spent DESC) <= 3 THEN 'High Value'
        ELSE 'Regular'
    END AS customer_tier
FROM customer_spend;



-- Moving average of spend per customer (over their orders)
WITH customer_orders AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        o.order_date,
        o.order_amount
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
)
SELECT
    customer_id,
    first_name,
    last_name,
    order_date,
    order_amount,
    ROUND(AVG(order_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ), 2) AS moving_avg_last_2_orders
FROM customer_orders
ORDER BY customer_id, order_date;
