CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    signup_date DATE
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    cost_price DECIMAL(10 , 2 ),
    selling_price DECIMAL(10 , 2 )
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10 , 2 ),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price_per_unit DECIMAL(10 , 2 ),
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    FOREIGN KEY (product_id)
        REFERENCES products (product_id)
);
INSERT INTO customers VALUES (1, 'Customer1', 'Male', 27, 'Chennai', '2023-11-02');
INSERT INTO customers VALUES (2, 'Customer2', 'Male', 39, 'Mumbai', '2023-06-14');
INSERT INTO customers VALUES (3, 'Customer3', 'Female', 27, 'Delhi', '2023-08-16');
INSERT INTO customers VALUES (4, 'Customer4', 'Female', 46, 'Mumbai', '2022-01-07');
INSERT INTO customers VALUES (5, 'Customer5', 'Female', 40, 'Mumbai', '2023-10-04');
INSERT INTO customers VALUES (6, 'Customer6', 'Female', 50, 'Bangalore', '2023-02-25');
INSERT INTO customers VALUES (7, 'Customer7', 'Male', 24, 'Mumbai', '2022-01-08');
INSERT INTO customers VALUES (8, 'Customer8', 'Female', 20, 'Hyderabad', '2022-12-23');
INSERT INTO customers VALUES (9, 'Customer9', 'Female', 56, 'Chennai', '2022-01-19');
INSERT INTO customers VALUES (10, 'Customer10', 'Male', 51, 'Mumbai', '2023-05-18');
INSERT INTO customers VALUES (11, 'Customer11', 'Male', 26, 'Bangalore', '2023-06-15');
INSERT INTO customers VALUES (12, 'Customer12', 'Male', 34, 'Delhi', '2023-04-02');
INSERT INTO customers VALUES (13, 'Customer13', 'Female', 46, 'Hyderabad', '2023-05-31');
INSERT INTO customers VALUES (14, 'Customer14', 'Male', 33, 'Delhi', '2023-03-20');
INSERT INTO customers VALUES (15, 'Customer15', 'Male', 35, 'Delhi', '2023-12-16');
INSERT INTO customers VALUES (16, 'Customer16', 'Male', 52, 'Hyderabad', '2022-01-13');
INSERT INTO customers VALUES (17, 'Customer17', 'Female', 26, 'Bangalore', '2022-07-22');
INSERT INTO customers VALUES (18, 'Customer18', 'Male', 59, 'Mumbai', '2022-09-24');
INSERT INTO customers VALUES (19, 'Customer19', 'Male', 44, 'Mumbai', '2022-11-14');
INSERT INTO customers VALUES (20, 'Customer20', 'Female', 30, 'Bangalore', '2022-02-14');
INSERT INTO products VALUES (1, 'Product1', 'Beauty', 107.47, 128.75);
INSERT INTO products VALUES (2, 'Product2', 'Beauty', 53.31, 101.01);
INSERT INTO products VALUES (3, 'Product3', 'Electronics', 55.02, 100.14);
INSERT INTO products VALUES (4, 'Product4', 'Beauty', 55.34, 76.0);
INSERT INTO products VALUES (5, 'Product5', 'Electronics', 153.75, 171.11);
INSERT INTO products VALUES (6, 'Product6', 'Beauty', 109.52, 144.07);
INSERT INTO products VALUES (7, 'Product7', 'Home', 166.27, 197.92);
INSERT INTO products VALUES (8, 'Product8', 'Clothing', 166.51, 190.38);
INSERT INTO products VALUES (9, 'Product9', 'Clothing', 155.27, 182.13);
INSERT INTO products VALUES (10, 'Product10', 'Home', 181.66, 215.18);
INSERT INTO orders VALUES (1, 13, '2023-07-26', 672.35);
INSERT INTO orders VALUES (2, 17, '2023-04-20', 924.01);
INSERT INTO orders VALUES (3, 14, '2024-01-20', 371.29);
INSERT INTO orders VALUES (4, 12, '2023-05-10', 650.54);
INSERT INTO orders VALUES (5, 14, '2023-10-30', 566.48);
INSERT INTO orders VALUES (6, 1, '2023-04-27', 680.44);
INSERT INTO orders VALUES (7, 7, '2023-12-18', 196.48);
INSERT INTO orders VALUES (8, 8, '2023-11-27', 553.11);
INSERT INTO orders VALUES (9, 7, '2024-02-29', 260.06);
INSERT INTO orders VALUES (10, 12, '2023-04-16', 630.72);
INSERT INTO orders VALUES (11, 19, '2024-01-23', 109.08);
INSERT INTO orders VALUES (12, 18, '2024-03-08', 682.49);
INSERT INTO orders VALUES (13, 7, '2023-04-16', 238.52);
INSERT INTO orders VALUES (14, 19, '2024-05-04', 210.31);
INSERT INTO orders VALUES (15, 7, '2023-04-30', 564.43);
INSERT INTO orders VALUES (16, 9, '2023-12-21', 845.51);
INSERT INTO orders VALUES (17, 13, '2024-04-01', 779.77);
INSERT INTO orders VALUES (18, 15, '2023-08-23', 381.38);
INSERT INTO orders VALUES (19, 2, '2024-03-09', 969.56);
INSERT INTO orders VALUES (20, 20, '2023-10-20', 385.38);
INSERT INTO orders VALUES (21, 18, '2024-03-13', 188.92);
INSERT INTO orders VALUES (22, 2, '2023-01-10', 276.17);
INSERT INTO orders VALUES (23, 8, '2023-09-21', 550.74);
INSERT INTO orders VALUES (24, 11, '2023-03-27', 794.66);
INSERT INTO orders VALUES (25, 5, '2023-06-05', 751.9);
INSERT INTO orders VALUES (26, 12, '2023-12-07', 533.97);
INSERT INTO orders VALUES (27, 3, '2024-03-12', 664.11);
INSERT INTO orders VALUES (28, 20, '2023-05-07', 245.24);
INSERT INTO orders VALUES (29, 8, '2023-02-15', 129.35);
INSERT INTO orders VALUES (30, 20, '2023-08-20', 793.16);
INSERT INTO orders VALUES (31, 12, '2023-12-22', 777.16);
INSERT INTO orders VALUES (32, 4, '2023-10-07', 847.03);
INSERT INTO orders VALUES (33, 14, '2023-07-28', 162.13);
INSERT INTO orders VALUES (34, 1, '2023-03-24', 375.83);
INSERT INTO orders VALUES (35, 14, '2023-07-04', 168.97);
INSERT INTO orders VALUES (36, 14, '2023-11-11', 220.72);
INSERT INTO orders VALUES (37, 13, '2023-03-03', 468.24);
INSERT INTO orders VALUES (38, 10, '2023-09-29', 589.52);
INSERT INTO orders VALUES (39, 18, '2023-07-25', 165.55);
INSERT INTO orders VALUES (40, 8, '2023-07-11', 129.52);
INSERT INTO orders VALUES (41, 17, '2024-05-03', 589.68);
INSERT INTO orders VALUES (42, 18, '2024-03-14', 463.98);
INSERT INTO orders VALUES (43, 19, '2024-04-27', 611.02);
INSERT INTO orders VALUES (44, 4, '2023-09-26', 321.73);
INSERT INTO orders VALUES (45, 13, '2023-04-06', 229.44);
INSERT INTO orders VALUES (46, 7, '2023-02-05', 792.42);
INSERT INTO orders VALUES (47, 15, '2023-12-17', 284.32);
INSERT INTO orders VALUES (48, 16, '2023-01-18', 699.15);
INSERT INTO orders VALUES (49, 20, '2023-07-29', 946.11);
INSERT INTO orders VALUES (50, 3, '2024-04-07', 534.73);
INSERT INTO order_items VALUES (1.0, 25.0, 8.0, 3.0, 190.38);
INSERT INTO order_items VALUES (2.0, 17.0, 1.0, 1.0, 128.75);
INSERT INTO order_items VALUES (3.0, 13.0, 4.0, 3.0, 76.0);
INSERT INTO order_items VALUES (4.0, 1.0, 2.0, 3.0, 101.01);
INSERT INTO order_items VALUES (5.0, 14.0, 8.0, 2.0, 190.38);
INSERT INTO order_items VALUES (6.0, 19.0, 1.0, 1.0, 128.75);
INSERT INTO order_items VALUES (7.0, 49.0, 10.0, 3.0, 215.18);
INSERT INTO order_items VALUES (8.0, 3.0, 8.0, 2.0, 190.38);
INSERT INTO order_items VALUES (9.0, 32.0, 5.0, 4.0, 171.11);
INSERT INTO order_items VALUES (10.0, 21.0, 2.0, 5.0, 101.01);
INSERT INTO order_items VALUES (11.0, 39.0, 7.0, 1.0, 197.92);
INSERT INTO order_items VALUES (12.0, 16.0, 2.0, 3.0, 101.01);
INSERT INTO order_items VALUES (13.0, 20.0, 3.0, 4.0, 100.14);
INSERT INTO order_items VALUES (14.0, 4.0, 9.0, 2.0, 182.13);
INSERT INTO order_items VALUES (15.0, 8.0, 2.0, 3.0, 101.01);
INSERT INTO order_items VALUES (16.0, 19.0, 9.0, 5.0, 182.13);
INSERT INTO order_items VALUES (17.0, 5.0, 9.0, 2.0, 182.13);
INSERT INTO order_items VALUES (18.0, 6.0, 7.0, 5.0, 197.92);
INSERT INTO order_items VALUES (19.0, 37.0, 3.0, 5.0, 100.14);
INSERT INTO order_items VALUES (20.0, 25.0, 2.0, 3.0, 101.01);
INSERT INTO order_items VALUES (21.0, 28.0, 1.0, 5.0, 128.75);
INSERT INTO order_items VALUES (22.0, 21.0, 10.0, 5.0, 215.18);
INSERT INTO order_items VALUES (23.0, 35.0, 4.0, 5.0, 76.0);
INSERT INTO order_items VALUES (24.0, 7.0, 7.0, 5.0, 197.92);
INSERT INTO order_items VALUES (25.0, 49.0, 1.0, 1.0, 128.75);
INSERT INTO order_items VALUES (26.0, 23.0, 6.0, 2.0, 144.07);
INSERT INTO order_items VALUES (27.0, 35.0, 7.0, 4.0, 197.92);
INSERT INTO order_items VALUES (28.0, 23.0, 8.0, 5.0, 190.38);
INSERT INTO order_items VALUES (29.0, 43.0, 6.0, 1.0, 144.07);
INSERT INTO order_items VALUES (30.0, 41.0, 7.0, 3.0, 197.92);
INSERT INTO order_items VALUES (31.0, 6.0, 1.0, 3.0, 128.75);
INSERT INTO order_items VALUES (32.0, 2.0, 5.0, 2.0, 171.11);
INSERT INTO order_items VALUES (33.0, 8.0, 4.0, 1.0, 76.0);
INSERT INTO order_items VALUES (34.0, 2.0, 7.0, 3.0, 197.92);
INSERT INTO order_items VALUES (35.0, 37.0, 7.0, 2.0, 197.92);
INSERT INTO order_items VALUES (36.0, 36.0, 8.0, 1.0, 190.38);
INSERT INTO order_items VALUES (37.0, 24.0, 5.0, 3.0, 171.11);
INSERT INTO order_items VALUES (38.0, 19.0, 8.0, 3.0, 190.38);
INSERT INTO order_items VALUES (39.0, 24.0, 2.0, 3.0, 101.01);
INSERT INTO order_items VALUES (40.0, 38.0, 3.0, 5.0, 100.14);
INSERT INTO order_items VALUES (41.0, 7.0, 1.0, 2.0, 128.75);
INSERT INTO order_items VALUES (42.0, 12.0, 9.0, 4.0, 182.13);
INSERT INTO order_items VALUES (43.0, 22.0, 8.0, 5.0, 190.38);
INSERT INTO order_items VALUES (44.0, 32.0, 6.0, 4.0, 144.07);
INSERT INTO order_items VALUES (45.0, 40.0, 1.0, 4.0, 128.75);
INSERT INTO order_items VALUES (46.0, 5.0, 3.0, 1.0, 100.14);
INSERT INTO order_items VALUES (47.0, 34.0, 7.0, 4.0, 197.92);
INSERT INTO order_items VALUES (48.0, 15.0, 5.0, 4.0, 171.11);
INSERT INTO order_items VALUES (49.0, 12.0, 3.0, 2.0, 100.14);
INSERT INTO order_items VALUES (50.0, 18.0, 6.0, 4.0, 144.07);
INSERT INTO order_items VALUES (51.0, 23.0, 9.0, 3.0, 182.13);
INSERT INTO order_items VALUES (52.0, 16.0, 7.0, 5.0, 197.92);
INSERT INTO order_items VALUES (53.0, 29.0, 10.0, 2.0, 215.18);
INSERT INTO order_items VALUES (54.0, 28.0, 7.0, 1.0, 197.92);
INSERT INTO order_items VALUES (55.0, 5.0, 7.0, 1.0, 197.92);
INSERT INTO order_items VALUES (56.0, 43.0, 10.0, 1.0, 215.18);
INSERT INTO order_items VALUES (57.0, 49.0, 2.0, 3.0, 101.01);
INSERT INTO order_items VALUES (58.0, 5.0, 8.0, 3.0, 190.38);
INSERT INTO order_items VALUES (59.0, 49.0, 9.0, 1.0, 182.13);
INSERT INTO order_items VALUES (60.0, 37.0, 3.0, 5.0, 100.14);
INSERT INTO order_items VALUES (61.0, 15.0, 3.0, 1.0, 100.14);
INSERT INTO order_items VALUES (62.0, 3.0, 10.0, 1.0, 215.18);
INSERT INTO order_items VALUES (63.0, 19.0, 9.0, 1.0, 182.13);
INSERT INTO order_items VALUES (64.0, 13.0, 10.0, 3.0, 215.18);
INSERT INTO order_items VALUES (65.0, 45.0, 1.0, 3.0, 128.75);
INSERT INTO order_items VALUES (66.0, 27.0, 8.0, 1.0, 190.38);
INSERT INTO order_items VALUES (67.0, 46.0, 6.0, 4.0, 144.07);
INSERT INTO order_items VALUES (68.0, 35.0, 9.0, 3.0, 182.13);
INSERT INTO order_items VALUES (69.0, 49.0, 3.0, 4.0, 100.14);
INSERT INTO order_items VALUES (70.0, 13.0, 9.0, 4.0, 182.13);
INSERT INTO order_items VALUES (71.0, 24.0, 5.0, 4.0, 171.11);
INSERT INTO order_items VALUES (72.0, 2.0, 1.0, 2.0, 128.75);
INSERT INTO order_items VALUES (73.0, 40.0, 10.0, 5.0, 215.18);
INSERT INTO order_items VALUES (74.0, 3.0, 8.0, 2.0, 190.38);
INSERT INTO order_items VALUES (75.0, 49.0, 6.0, 4.0, 144.07);
INSERT INTO order_items VALUES (76.0, 5.0, 6.0, 5.0, 144.07);
INSERT INTO order_items VALUES (77.0, 49.0, 3.0, 1.0, 100.14);
INSERT INTO order_items VALUES (78.0, 30.0, 3.0, 1.0, 100.14);
INSERT INTO order_items VALUES (79.0, 14.0, 3.0, 3.0, 100.14);
INSERT INTO order_items VALUES (80.0, 28.0, 1.0, 1.0, 128.75);
INSERT INTO order_items VALUES (81.0, 34.0, 4.0, 3.0, 76.0);
INSERT INTO order_items VALUES (82.0, 37.0, 1.0, 2.0, 128.75);
INSERT INTO order_items VALUES (83.0, 24.0, 2.0, 4.0, 101.01);
INSERT INTO order_items VALUES (84.0, 35.0, 10.0, 1.0, 215.18);
INSERT INTO order_items VALUES (85.0, 43.0, 9.0, 2.0, 182.13);
INSERT INTO order_items VALUES (86.0, 39.0, 2.0, 4.0, 101.01);
INSERT INTO order_items VALUES (87.0, 40.0, 6.0, 2.0, 144.07);
INSERT INTO order_items VALUES (88.0, 36.0, 6.0, 2.0, 144.07);
INSERT INTO order_items VALUES (89.0, 11.0, 6.0, 2.0, 144.07);
INSERT INTO order_items VALUES (90.0, 3.0, 9.0, 2.0, 182.13);
INSERT INTO order_items VALUES (91.0, 12.0, 5.0, 2.0, 171.11);
INSERT INTO order_items VALUES (92.0, 31.0, 7.0, 3.0, 197.92);
INSERT INTO order_items VALUES (93.0, 9.0, 1.0, 4.0, 128.75);
INSERT INTO order_items VALUES (94.0, 13.0, 1.0, 1.0, 128.75);
INSERT INTO order_items VALUES (95.0, 50.0, 6.0, 4.0, 144.07);
INSERT INTO order_items VALUES (96.0, 25.0, 7.0, 1.0, 197.92);
INSERT INTO order_items VALUES (97.0, 42.0, 6.0, 2.0, 144.07);
INSERT INTO order_items VALUES (98.0, 34.0, 8.0, 1.0, 190.38);
INSERT INTO order_items VALUES (99.0, 12.0, 1.0, 4.0, 128.75);
INSERT INTO order_items VALUES (100.0, 46.0, 6.0, 3.0, 144.07);
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS revenue
FROM
    orders
GROUP BY month
ORDER BY month;
SELECT 
    c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;
SELECT 
    p.category,
    SUM(oi.quantity * (oi.price_per_unit - p.cost_price)) AS profit
FROM
    order_items oi
        JOIN
    products p ON oi.product_id = p.product_id
GROUP BY p.category;

