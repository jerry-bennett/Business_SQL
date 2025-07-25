
-- USERS TABLE
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    signup_date DATE
);

DROP TABLE users

-- SESSIONS TABLE
CREATE TABLE sessions (
    session_id INT PRIMARY KEY,
    user_id INT,
    session_start TIMESTAMP,
    device TEXT,
    country TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- EVENTS TABLE
CREATE TABLE events (
    event_id INT PRIMARY KEY,
    session_id INT,
    event_type TEXT, -- e.g. 'page_view', 'add_to_cart', 'purchase'
    event_timestamp TIMESTAMP,
    page_url TEXT,
    FOREIGN KEY (session_id) REFERENCES sessions(session_id)
);

-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price DECIMAL(10, 2)
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date TIMESTAMP,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
