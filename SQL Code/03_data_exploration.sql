-- =========================================
-- BASIC DATA EXPLORATION
-- =========================================

-- Total orders
SELECT COUNT(*) FROM orders;

-- Sample data
SELECT * FROM order_items LIMIT 50;

-- Join customers & orders
SELECT 
    c.customer_id,
    o.order_id
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id;

-- Join with payments
SELECT 
    c.customer_id,
    o.order_id,
    p.payment_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id;