-- sql/import_raw.sql

\copy superstore_raw(order_id, order_date, ship_date, ship_mode, customer_id, customer_name, segment, country, city, state, postal_code, region, product_id, category, sub_category, product_name, sales, quantity, discount, profit)
FROM 'data/superstore.csv'
DELIMITER ',' CSV HEADER;