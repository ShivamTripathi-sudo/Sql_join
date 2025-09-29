show databases;
drop database joins;

create database joins;
use joins;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);
select *from Orders;
-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Insert Customers
INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Kolkata'),
(4, 'David', 'Chennai');

-- Insert Orders
INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount) VALUES
(101, '2025-09-01', 1, 2500.00),
(102, '2025-09-05', 1, 1800.00),
(103, '2025-09-07', 2, 3000.00),
(104, '2025-09-10', 3, 1500.00);
-- use of inner join;
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
-- use of left joins;
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
-- use of Right joins
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- use of full joins

SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
-- MySQL alternative for FULL JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;






