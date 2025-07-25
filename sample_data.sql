-- sample_data.sql

-- USERS
INSERT INTO users VALUES
(1, 'Alice', 'Nguyen', 'alice@example.com', '2024-12-01'),
(2, 'Ben', 'Martinez', 'ben@example.com', '2025-01-15'),
(3, 'Clara', 'Wright', 'clara@example.com', '2025-03-10');

-- SESSIONS
INSERT INTO sessions VALUES
(100, 1, '2025-07-01 10:00:00', 'desktop', 'US'),
(101, 1, '2025-07-02 14:30:00', 'mobile', 'US'),
(102, 2, '2025-07-03 08:15:00', 'tablet', 'UK'),
(103, 3, '2025-07-04 16:45:00', 'desktop', 'US');

-- EVENTS
INSERT INTO events VALUES
(1000, 100, 'page_view', '2025-07-01 10:01:00', '/home'),
(1001, 100, 'page_view', '2025-07-01 10:02:00', '/product/1'),
(1002, 100, 'add_to_cart', '2025-07-01 10:03:00', '/cart'),
(1003, 100, 'purchase', '2025-07-01 10:04:00', '/checkout'),
(1004, 101, 'page_view', '2025-07-02 14:31:00', '/home'),
(1005, 103, 'page_view', '2025-07-04 16:46:00', '/about');

-- PRODUCTS
INSERT INTO products VALUES
(1, 'Analytics 101', 'Education', 29.99),
(2, 'SQL Masterclass', 'Education', 49.99),
(3, 'Data Viz Toolkit', 'Tools', 19.99);

-- ORDERS
INSERT INTO orders VALUES
(2000, 1, '2025-07-01 10:04:00', 29.99);
