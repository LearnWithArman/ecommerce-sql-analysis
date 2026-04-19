-- =========================================
-- PRIMARY KEYS
-- =========================================

ALTER TABLE customers ADD PRIMARY KEY (customer_id);
ALTER TABLE orders ADD PRIMARY KEY (order_id);
ALTER TABLE products ADD PRIMARY KEY (product_id);
ALTER TABLE sellers ADD PRIMARY KEY (seller_id);

-- =========================================
-- FOREIGN KEYS
-- =========================================

ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE payments
ADD CONSTRAINT fk_payment_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE reviews
ADD CONSTRAINT fk_review_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);