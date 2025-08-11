create database task_5;
use task_5;
-- Tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Data
INSERT INTO Customers VALUES
(1, 'Sai', 'USA'),
(2, 'Vijay', 'Canada'),
(3, 'Hima', 'UK'),
(4, 'Bindu', 'USA');

INSERT INTO Orders VALUES
(101, 1, '2025-08-01', 250.00),
(102, 1, '2025-08-02', 300.00),
(103, 2, '2025-08-03', 150.00); -- does not exist in Customers

-- INNER JOIN
SELECT Customers.customer_id, Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- LEFT JOIN
SELECT Customers.customer_id, Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN 
SELECT Customers.customer_id, Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- FULL OUTER JOIN
SELECT Customers.customer_id, Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.customer_id, Customers.customer_name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
