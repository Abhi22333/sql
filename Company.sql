CREATE TABLE Company (
  CompanyID int PRIMARY KEY,
  Name varchar(50) NOT NULL,
  years int CHECK (years > 15),
  Department varchar(50) UNIQUE,
  Salary INT );

desc Company ;
select * from Company;

INSERT INTO Company (CompanyID, Name, years, Department, Salary)
VALUES
(1, 'info', 15, 'HR', 50000),
(2, ' clone', 30, 'IT', 60000),
(3, 'nana', 28, 'Finance', 55000),
(4, 'Google', 12, 'Marketing', 65000),
(5, 'it', 22, 'Sales', 45000); 
ALTER TABLE Company ADD CONSTRAINT unique_Company_id UNIQUE(CompanyID);
ALTER TABLE Company DROP CONSTRAINT unique_Company_id;
ALTER TABLE Company ADD CONSTRAINT unique_name UNIQUE(Name);
ALTER TABLE Company DROP CONSTRAINT unique_Name;


CREATE TABLE Products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100) UNIQUE,
    price int CHECK (price > 0),
    quantity INT,
    manufacture_date DATE);

INSERT INTO Products (id, product_name, price, quantity, manufacture_date) VALUES
(1, 'mobile', 10000, 100, '2022-01-01'),
(2, 'dress', 2000, 200, '2023-02-15'),
(3, 'chocolate', 100, 150, '2024-03-20'),
(4, 'washingmachine',15000, 50, '2022-04-10'),
(5, 'microwave', 5000, 300, '2021-05-05');

desc Products ;
select * from Products;

ALTER TABLE Products ADD CONSTRAINT unique_Products_id UNIQUE(ID);
ALTER TABLE Products DROP CONSTRAINT unique_Products_id;
ALTER TABLE Products ADD CONSTRAINT unique_price UNIQUE(price);
ALTER TABLE Products DROP CONSTRAINT unique_price;