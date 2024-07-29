CREATE TABLE delivery(id int PRIMARY KEY,person_name varchar(20),
                      mode_of_payment enum('cash','card','online'),
                      restaurant_id int,order_id int,
                      created_at timestamp,created_by varchar(20),
                      modified_at timestamp,modified_by varchar(20),
					  FOREIGN KEY (restaurant_id) REFERENCES restaurant(restaurant_id),
					  FOREIGN KEY (order_id) REFERENCES orders(order_id));