CREATE DATABASE assigning;
USE assigning;
CREATE TABLE bank_details (
  customer_name VARCHAR(255),
  account_number VARCHAR(255),
  branch_name VARCHAR(100),
  account_type VARCHAR(100),
  customer_address VARCHAR(255),
  age INT,
  years_with_bank INT,
  balance BIGINT,
  account_opening_balance BIGINT,
  is_active BOOLEAN
);
ALTER TABLE bank_details
ADD COLUMN phone_number VARCHAR(20),
ADD COLUMN email VARCHAR(100),
ADD COLUMN occupation VARCHAR(100),
ADD COLUMN address_line2 VARCHAR(255),
ADD COLUMN city VARCHAR(100);

ALTER TABLE bank_details CHANGE COLUMN customer_name customer_full_name VARCHAR(255);
ALTER TABLE bank_details CHANGE COLUMN account_number account_id INT;
ALTER TABLE bank_details CHANGE COLUMN branch_name branch_location VARCHAR(255);
ALTER TABLE bank_details CHANGE COLUMN account_type account_category VARCHAR(255);
ALTER TABLE bank_details CHANGE COLUMN customer_address address_line1 VARCHAR(255);


INSERT INTO bank_details 
(customer_full_name, account_id, branch_location, account_category, address_line1, age, years_with_bank, balance, account_opening_balance, is_active, phone_number, email, occupation, address_line2, city) 
VALUES 
('abhishek', 959186, 'kadur', 'Savings', '123 Main St', 30, 5, 1000, 500, 1, '123-456-7890', 'abhi@example.com', 'Engineer', 'Apt 101', 'New York'), 
('arjun', 636167, 'ckikkamagluru', 'Checking', '456 Elm St', 25, 3, 500, 200, 0, '987-654-3210', 'arjun@example.com', 'Doctor', 'Apt 202', 'Los Angeles'), 
('bharath', 832312, 'bangluru', 'Savings', '789 Oak St', 40, 10, 2000, 1000, 1, '111-111-1111', 'barth@example.com', 'Lawyer', 'Apt 303', 'Chicago'), 
('man', 874791, 'Hassan', 'Checking', '321 Pine St', 35, 7, 1500, 750, 1, '222-222-2222', 'man@example.com', 'Teacher', 'Apt 404', 'Houston'), 
('chandu', 968600, 'tiptur', 'Savings', '901 Maple St', 28, 4, 1200, 600, 0, '333-333-3333', 'chandu@example.com', 'Programmer', 'Apt 505', 'Phoenix'), 
('ani', 457788, 'shivmoga', 'Checking', '234 Spruce St', 32, 6, 1800, 900, 1, '444-444-4444', 'ani@example.com', 'Nurse', 'Apt 606', 'Philadelphia'), 
('govind', 968600, 'arsikere', 'Savings', '678 Cedar St', 45, 12, 2500, 1250, 1, '555-555-5555', 'govind@example.com', 'Manager', 'Apt 707', 'San Francisco'), 
(' Patel', 867556, 'tangli', 'Checking', '345 Walnut St', 38, 9, 2000, 1000, 0, '666-666-6666', 'patel@example.com', 'Engineer', 'Apt 808', 'Dallas'), 
(' Manu', 737373, 'Santhe', 'Savings', '567 Fir St', 42, 11, 2200, 1100, 1, '777-777-7777', 'manu@example.com', 'Scientist', 'Apt 909', 'San Diego'), 
('Akash', 290273, 'Somehalli', 'Checking', '890 Pine St', 29, 5, 1500, 750, 0, '888-888-8888', 'akash@example.com', 'Artist', 'Apt 1010', 'Seattle');

UPDATE bank_details
SET balance = 2500
WHERE account_id = '959186';

UPDATE bank_details
SET email = 'abhishek@example.com'
WHERE customer_full_name = 'abhishek';

UPDATE bank_details
SET occupation = 'Consultant'
WHERE account_id = '1111111111';

UPDATE bank_details
SET address_line2 = 'Apt 303B'
WHERE customer_full_name = 'Bob Brown';

UPDATE bank_details
SET phone_number = '555-123-4567'
WHERE account_id = '2222222222';

UPDATE bank_details
SET is_active = TRUE
WHERE customer_full_name = 'Alice Johnson';

UPDATE bank_details
SET account_opening_balance = 1500
WHERE account_id = '3333333333';

UPDATE bank_details
SET city = 'San Jose'
WHERE customer_full_name = 'Mike Davis';

UPDATE bank_details
SET years_with_bank = 8
WHERE account_id = '4444444444';

UPDATE bank_details
SET account_category = 'Savings'
WHERE customer_full_name = 'Emma Taylor';

DELETE FROM bank_details
WHERE account_id = '1234567890';

DELETE FROM bank_details
WHERE customer_full_name = 'Jane Smith';

DELETE FROM bank_details
WHERE balance < 1000;

SELECT * FROM bank_details
WHERE balance > 2000 AND years_with_bank > 5;

SELECT * FROM bank_details
WHERE account_category = 'Savings' OR account_category = 'Checking';

SELECT * FROM bank_details
WHERE customer_full_name IN ('John Doe', 'Jane Smith', 'Bob Brown');

SELECT * FROM bank_details
WHERE balance NOT IN (1000, 2000, 500);

SELECT * FROM bank_details
WHERE city = 'New York' OR city = 'Los Angeles';

SELECT * FROM bank_details
WHERE occupation = 'Engineer' AND age > 30;

SELECT *
FROM bank_details;