-- Insertar datos en la tabla customers (sin duplicados)
INSERT INTO customers (customer_id, customer_name, segment, country, city, state, postal_code, region)
SELECT DISTINCT customer_id, customer_name, segment, country, city, state, postal_code, region
FROM superstore_raw
ON CONFLICT (customer_id) DO NOTHING;

-- Insertar datos en la tabla products (sin duplicados)
INSERT INTO products (product_id, category, sub_category, product_name)
SELECT DISTINCT product_id, category, sub_category, product_name
FROM superstore_raw
ON CONFLICT (product_id) DO NOTHING;

-- Insertar datos en la tabla orders (sin duplicados)
INSERT INTO orders (order_id, order_date, ship_date, ship_mode, customer_id, product_id, sales, quantity, discount, profit)
SELECT order_id, order_date, ship_date, ship_mode, customer_id, product_id, sales, quantity, discount, profit
FROM superstore_raw
ON CONFLICT (order_id) DO NOTHING;
