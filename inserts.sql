-- Insert Customers
INSERT INTO customers (first_name, last_name, age, gender, location, signup_date) VALUES
('Jen', 'South', 29, 'F', 'New York', '2022-01-15'),
('Edward', 'Juan', 45, 'M', 'Chicago', '2020-11-03'),
('Tara', 'Davis', 34, 'F', 'San Francisco', '2021-06-21'),
('Michael', 'Queen', 52, 'M', 'Austin', '2022-09-10'),
('Justin', 'Case', 24, 'M', 'Tampa Bay', '2022-07-17');

-- Insert Orders
INSERT INTO orders (customer_id, order_date, order_amount) VALUES
(1, '2024-01-10', 120.50),
(1, '2025-03-22', 80.00),
(2, '2025-02-14', 200.00),
(3, '2024-03-05', 50.00),
(3, '2024-04-18', 75.00),
(4, '2025-05-01', 300.00),
(5, '2024-08-15', 60.00),
(5, '2025-01-07', 150.00),
(5, '2025-03-19', 75.00);
