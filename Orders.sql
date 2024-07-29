CREATE DATABASE orders;
USE orders;

CREATE TABLE orders(id int,order_name varchar(20),
                    cost bigint,order_id int primary key,
                    created_at timestamp,created_by varchar(30),
                    modified_at timestamp,modified_by varchar(40));
                    

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (1, 'Pizza', 1500, 101, '2024-07-29 12:34:56', 'kavana', '2024-07-29 12:34:56', 'Smitha');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (2, 'Burger', 800, 102, '2024-07-29 12:35:00', 'Aliya', '2024-07-29 12:35:00', 'Babu');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (3, 'Pasta', 1200, 103, '2024-07-29 12:35:10', 'Charlie', '2024-07-29 12:35:10', 'Eve Green');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (4, 'Salad', 600, 104, '2024-07-29 12:35:20', 'David', '2024-07-29 12:35:20', 'abhi');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (5, 'Sandwich', 700, 105, '2024-07-29 12:35:30', 'Smith', '2024-07-29 12:35:30', 'George');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (6, 'Soup', 400, 106, '2024-07-29 12:35:40', 'Frank Orange', '2024-07-29 12:35:40', 'Hannah Pink');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (7, 'Steak', 2000, 107, '2024-07-29 12:35:50', 'Ibbani', '2024-07-29 12:35:50', 'Jack');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (8, 'Taco', 900, 108, '2024-07-29 12:36:00', 'richu', '2024-07-29 12:36:00', 'Laura');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (9, 'Sushi', 1800, 109, '2024-07-29 12:36:10', 'kavin', '2024-07-29 12:36:10', 'anita');

INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES (10, 'Ramen', 1300, 110, '2024-07-29 12:36:20', 'Angel', '2024-07-29 12:36:20', 'Agna Paul');

desc orders ;
select * from orders;
                    
CREATE TABLE payment(id int,price bigint,payment_id int primary key,
                     order_id int, payment_status varchar(20),
                     created_at timestamp,created_by varchar(30),
                     modified_at timestamp,modified_by varchar(40),FOREIGN KEY (order_id) REFERENCES orders(order_id));
                     
INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (1, 1500, 201, 101, 'Completed', '2024-07-29 12:40:00', 'kavana', '2024-07-29 12:40:00', 'Smitha');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (2, 800, 202, 102, 'Pending', '2024-07-29 12:41:00', 'Aliya', '2024-07-29 12:41:00', 'Babu ');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (3, 1200, 203, 103, 'Failed', '2024-07-29 12:42:00', 'Charlie', '2024-07-29 12:42:00', 'Eve Green');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (4, 600, 204, 104, 'Completed', '2024-07-29 12:43:00', 'David', '2024-07-29 12:43:00', 'abhi');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (5, 700, 205, 105, 'Pending', '2024-07-29 12:44:00', 'Smith', '2024-07-29 12:44:00', 'George');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (6, 400, 206, 106, 'Completed', '2024-07-29 12:45:00', 'Frank Orange', '2024-07-29 12:45:00', 'Pinky');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (7, 2000, 207, 107, 'Failed', '2024-07-29 12:46:00', 'Ibbani', '2024-07-29 12:46:00', 'Jack ');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (8, 900, 208, 108, 'Completed', '2024-07-29 12:47:00', 'Richu', '2024-07-29 12:47:00', 'Laura');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (9, 1800, 209, 109, 'Pending', '2024-07-29 12:48:00', 'Kavin', '2024-07-29 12:48:00', 'anita');

INSERT INTO payment (id, price, payment_id, order_id, payment_status, created_at, created_by, modified_at, modified_by)
VALUES (10, 1300, 210, 110, 'Completed', '2024-07-29 12:49:00', 'Angel', '2024-07-29 12:49:00', 'Agna Paul');

desc payment ;
select * from payment ;
                     
CREATE TABLE restaurant(id int,restaurant_name varchar(20),restaurant_id int primary key,
                        location varchar(20),order_id int,ratings int,payment_id int,
                        created_at timestamp,created_by varchar(30),
                        modified_at timestamp,modified_by varchar(40),
                        FOREIGN KEY (order_id) REFERENCES orders(order_id),
                        FOREIGN KEY (payment_id) REFERENCES payment(payment_id));
                        
                        
INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (1, 'Broscafe', 301, 'chikkamagaluru', 101, 5, 201, '2024-07-29 13:00:00', 'John', '2024-07-29 13:00:00', 'Smitha');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (2, 'Cafe', 302, 'rajajinagara', 102, 4, 202, '2024-07-29 13:01:00', 'Aliya', '2024-07-29 13:01:00', 'Abhi');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (3, 'Goli', 303, 'shimoga', 103, 3, 203, '2024-07-29 13:02:00', 'Henry', '2024-07-29 13:02:00', 'David');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (4, 'Grill', 304, 'Westside', 104, 5, 204, '2024-07-29 13:03:00', 'spandu', '2024-07-29 13:03:00', 'hima');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (5, 'Pizza Place', 305, 'uttarahalli', 105, 4, 205, '2024-07-29 13:04:00', 'Agna', '2024-07-29 13:04:00', 'George');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (6, 'Gofoodie', 306, 'chikkamagaluru', 106, 5, 206, '2024-07-29 13:05:00', 'Swathi', '2024-07-29 13:05:00', 'Pinky');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (7, 'Panchami', 307, 'Shimoga', 107, 5, 207, '2024-07-29 13:06:00', 'Abhi', '2024-07-29 13:06:00', 'Jack');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (8, 'Bengaluru cafe', 308, 'rajajinagar', 108, 4, 208, '2024-07-29 13:07:00', 'Kavin', '2024-07-29 13:07:00', 'Laura');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (9, 'Preeti canteen', 309, 'Birur', 109, 3, 209, '2024-07-29 13:08:00', 'Mandara', '2024-07-29 13:08:00', 'Nithin');

INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES (10, 'matura', 310, 'sagara', 110, 5, 210, '2024-07-29 13:09:00', 'Ravi', '2024-07-29 13:09:00', 'Agna Paul');

desc restaurant ;
select * from restaurant ;	

CREATE TABLE delivery(id int,person_name varchar(20),
                      mode_of_payment enum('cash','card','online'),
                      restaurant_id int,order_id int,
                      created_at timestamp,created_by varchar(20),
                      modified_at timestamp,modified_by varchar(20),
					  FOREIGN KEY (restaurant_id) REFERENCES restaurant(restaurant_id),
					  FOREIGN KEY (order_id) REFERENCES orders(order_id));
                      
                      
INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (1, 'Michael ', 'cash', 301, 101, '2024-07-29 13:10:00', 'Deepu', '2024-07-29 13:10:00', 'Nagu');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (2, 'Jeeny', 'card', 302, 102, '2024-07-29 13:11:00', 'Manthana', '2024-07-29 13:11:00', 'Navya');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (3, 'Kavana', 'online', 303, 103, '2024-07-29 13:12:00', 'Kevin', '2024-07-29 13:12:00', 'Pinky');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (4, 'Sunny', 'cash', 304, 104, '2024-07-29 13:13:00', 'Anitta', '2024-07-29 13:13:00', 'Ryan');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (5, 'Martin', 'card', 305, 105, '2024-07-29 13:14:00', 'Priya', '2024-07-29 13:14:00', 'Bharat');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (6, 'Kevin', 'online', 306, 106, '2024-07-29 13:15:00', 'Andy ', '2024-07-29 13:15:00', 'Kevin');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (7, 'Nanda', 'cash', 307, 107, '2024-07-29 13:16:00', 'Tommy', '2024-07-29 13:16:00', 'Robbin');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (8, 'Pranav', 'card', 308, 108, '2024-07-29 13:17:00', 'Bindu', '2024-07-29 13:17:00', 'kavana');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (9, 'Hima', 'online', 309, 109, '2024-07-29 13:18:00', 'Nithin', '2024-07-29 13:18:00', 'Peter');

INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES (10, 'Kavaya','cash',310,110,'2024-07-29 13:19:00','Navya','2024-07-29 13:18:00','Abhi');

desc delivery;
select * from delivery ;