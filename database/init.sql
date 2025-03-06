CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT REFERENCES categories(id),
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO users (name, email, password) VALUES 
('John Doe', 'john@example.com', 'hashed_password'),
('Jane Doe', 'jane@example.com', 'hashed_password');

INSERT INTO categories (name) VALUES 
('Electronics'), ('Books'), ('Clothing');

INSERT INTO products (name, category_id, price) VALUES 
('Laptop', 1, 1200.99),
('Fiction Book', 2, 19.99),
('T-Shirt', 3, 9.99);
