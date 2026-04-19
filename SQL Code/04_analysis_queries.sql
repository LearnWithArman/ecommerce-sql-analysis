-- =========================================
-- REVENUE ANALYSIS
-- =========================================

-- Total revenue
SELECT SUM(payment_value) AS total_revenue
FROM payments;

-- Average order value
SELECT AVG(payment_value) AS avg_value
FROM payments;

-- Revenue by state
SELECT 
    c.customer_state,
    SUM(p.payment_value) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

-- Orders by city
SELECT 
    c.customer_city,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC;