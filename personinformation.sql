create database person;
use person;

CREATE TABLE PERSON_INFORMATION(person_ID int primary key, 
 First_Name VARCHAR(50) NOT NULL,
 Last_Name VARCHAR(50) NOT NULL,
 Email VARCHAR(100) UNIQUE NOT NULL,
 Age INT CHECK (Age >= 18)
);

INSERT INTO PERSON_INFORMATION(PERSON_ID, First_Name, Last_Name, Email, Age)
VALUES
  (1, 'Abhishek', 'TC', 'abhishektc47@gmail.com', 22),
  (2, 'Deekshith', 'LR', 'deekshi87@gmail.com', 23),
  (3, 'Rudresh', 'LM', 'rudresh34@gmail.com', 35),
  (4, 'Sachin', 'MD', 'sachimd33@gmail.com', 20),
  (5, 'Ajya', 'MK', 'ajyamk12@gmail.com', 28),
  (6, 'Ammu', 'KB', 'ammukb56@gmail.com', 22),
  (7, 'Tommy', 'ML', 'tommyml12@gmail.com', 40),
  (8, 'Somesh', 'KR', 'someshkr7@gmail.com', 38),
  (9, 'Om', 'BN', 'ombn22@gmail.com', 32),
  (10, 'Isban', 'MK', 'isbanmk87@gmail.com', 26);

SELECT * FROM PERSON_INFORMATION 
WHERE Age BETWEEN 25 AND 35;

SELECT * FROM PERSON_INFORMATION 
WHERE Email LIKE '%@example.com';

CREATE TABLE Orders (
  Order_ID INT PRIMARY KEY,
  PERSON_ID INT NOT NULL,
  Order_Date DATE NOT NULL,
  Total DECIMAL(10, 2) NOT NULL,
  Status VARCHAR(20) NOT NULL,
  FOREIGN KEY (PERSON_ID) REFERENCES PERSON_INFORMATION  (PERSON_ID)
);

INSERT INTO Orders(Order_ID, PERSON_ID, Order_Date, Total, Status)
VALUES
  (1, 1, '2022-01-01', 100.00, 'Completed'),
  (2, 2, '2022-01-15', 200.00, 'Pending'),
  (3, 3, '2022-02-01', 50.00, 'Completed'),
  (4, 4, '2022-03-01', 75.00, 'Pending'),
  (5, 5, '2022-04-01', 150.00, 'Completed'),
  (6, 6, '2022-05-01', 25.00, 'Pending'),
  (7, 7, '2022-06-01', 300.00, 'Completed'),
  (8, 8, '2022-07-01', 100.00, 'Pending'),
  (9, 9, '2022-08-01', 200.00, 'Completed'),
  (10, 10, '2022-09-01', 50.00, 'Pending');

CREATE INDEX idx_PERSON_ID ON PERSON_INFORMATION(PERSON_ID);

SELECT * FROM PERSON_INFORMATION 
WHERE PERSON_ID = 5;


SELECT * FROM Orders
ORDER BY Total DESC;

SELECT 
  UPPER(First_Name) AS UpperFirst_Name,
  LOWER(Last_Name) AS LowerLast_Name,
  CONCAT(First_Name, ' ', Last_Name) AS Full_Name,
  LENGTH(Email) AS EmailLength
FROM PERSON_INFORMATION;


