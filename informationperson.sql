CREATE DATABASE informationperson;
USE informationperson;
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL UNIQUE,
    Description Varchar(30),
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO Categories (CategoryID, CategoryName, Description, CreatedDate, UpdatedDate) VALUES
(1, 'Electronics', 'Devices and gadgets', '2020-01-01', '2024-01-01'),
(2, 'Books', 'Printed and electronic books', '2021-02-15', '2024-02-15'),
(3, 'Clothing', 'Men and women clothing', '2019-03-10', '2024-03-10'),
(4, 'Furniture', 'Home and office furniture', '2018-04-20', '2024-04-20'),
(5, 'Toys', 'Children toys', '2020-05-25', '2024-05-25'),
(6, 'Sports', 'Sports equipment', '2021-06-30', '2024-06-30'),
(7, 'Health', 'Health and wellness products', '2019-07-05', '2024-07-05'),
(8, 'Beauty', 'Beauty and personal care', '2020-08-15', '2024-08-01'),
(9, 'Automotive', 'Vehicle parts and accessories', '2021-09-25', '2024-07-25'),
(10, 'Groceries', 'Food and beverages', '2022-10-10', '2024-1-10');

SELECT * FROM Categories;

SELECT * FROM Categories WHERE CategoryName LIKE 'B%';
SELECT * FROM Categories WHERE CategoryName LIKE 'A%';
SELECT * FROM Categories ORDER BY Description;

SELECT 
    UPPER(categoryname) AS CategoryNameUpper,
    LOWER(categoryname) AS CategoryNameLower,
    CONCAT('Category: ', categoryname) AS CategoryFullName,
    LENGTH(categoryname) AS CategoryNameLength
FROM categories;

CREATE INDEX idx_CategoryName ON Categories (CategoryName);
SELECT * FROM Categories WHERE CategoryName LIKE 'A%';

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL UNIQUE,  
    Price DECIMAL(10, 2) CHECK (Price > 0),  
    Quantity INT ,      
    CategoryID INT,
     FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Products (ProductID, ProductName, Price, Quantity, CategoryID) VALUES
(1, 'Laptop', 1000.00, 10, 1),
(2, 'Smartphone', 500.00, 20, 1),
(3, 'T-Shirt', 20.00, 50, 3),
(4, 'Desk', 150.00, 15, 4),
(5, 'Action Figure', 30.00, 40, 5),
(6, 'Basketball', 25.00, 30, 6),
(7, 'Vitamin C', 15.00, 25, 7),
(8, 'Shampoo', 10.00, 35, 8),
(9, 'Car Tire', 100.00, 12, 9),
(10, 'Pasta', 5.00, 100, 10);

SELECT * FROM Products;

SELECT * FROM Products WHERE Price BETWEEN 20.00 AND 500.00;
SELECT * FROM Products WHERE ProductName LIKE 'S%';
SELECT * FROM Products ORDER BY ProductName;
SELECT 
    UPPER(ProductName) AS ProductNameUpper,
    LOWER(ProductName) AS ProductNameLower,
    CONCAT('Product: ', ProductName) AS FullProductName,
    LENGTH(ProductName) AS ProductNameLength
FROM Products;
CREATE INDEX idx_ProductName ON Products (ProductName);

SELECT * FROM Products WHERE ProductName LIKE 'B%';