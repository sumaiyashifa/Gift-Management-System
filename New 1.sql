-- Insert data into the users table
insert into users (user_id, username, password, email, address, phone) values (10000, 'Shifa', 'password1', 'a@gmail.com', 'Khulna', '01790523450');
insert into users (user_id, username, password, email, address, phone) values (20000, 'Sumaiya', 'password2', 'b@gmail.com', 'Khulna', '01790523451');
insert into users (user_id, username, password, email, address, phone) values (30000, 'Subrina', 'password3', 'c@gmail.com', 'Khulna', '01790523452');
insert into users (user_id, username, password, email, address, phone) values (40000, 'Shama', 'password4', 'd@gmail.com', 'Khulna', '01790523453');
insert into users (user_id, username, password, email, address, phone) values (50000, 'Sheli', 'password5', 'e@gmail.com', 'Khulna', '01790523454');
insert into users (user_id, username, password, email, address, phone) values (60000, 'Sanaya', 'password6', 'f@gmail.com', 'Khulna', '01790523455');
insert into users (user_id, username, password, email, address, phone) values (70000, 'Siyara', 'password7', 'g@gmail.com', 'Khulna', '01790523456');
insert into users (user_id, username, password, email, address, phone) values (80000, 'Sadika', 'password8', 'h@gmail.com', 'Khulna', '01790523457');
insert into users (user_id, username, password, email, address, phone) values (90000, 'Sabiha', 'password9', 'i@gmail.com', 'Khulna', '01790523458');
insert into users (user_id, username, password, email, address, phone) values (12334, 'Salma', 'password0', 'j@gmail.com', 'Khulna', '01790523459');

-- Insert data into the Categories table
INSERT INTO Categories (category_id, category_name) VALUES (1, 'Electronics');
INSERT INTO Categories (category_id, category_name) VALUES (2, 'Clothing');
INSERT INTO Categories (category_id, category_name) VALUES (3, 'Toys');
INSERT INTO Categories (category_id, category_name) VALUES (4, 'Jewelry');
INSERT INTO Categories (category_id, category_name) VALUES (5, 'Books');
INSERT INTO Categories (category_id, category_name) VALUES (6, 'Furniture');
INSERT INTO Categories (category_id, category_name) VALUES (7, 'Home Appliances');
INSERT INTO Categories (category_id, category_name) VALUES (8, 'Sports Equipment');
INSERT INTO Categories (category_id, category_name) VALUES (9, 'Beauty & Personal Care');
INSERT INTO Categories (category_id, category_name) VALUES (10, 'Stationery');

-- Insert data into the product table
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10001, 'mobile', 111, 20000, 1);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10002, 'Dress', 112, 30000, 2);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10003, 'camera', 113, 40000, 3);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10004, 'Doll', 114, 50000, 4);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10005, 'watch', 115, 60000, 5);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10006, 'perfume', 116, 70000, 6);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10007, 'Bag', 117, 80000, 7);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10008, 'iphone', 118, 90000, 8);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10009, 'Jwellary', 119, 100000, 9);
INSERT INTO product (pro_id, pro_name, pro_model, price, category_id) VALUES (10010, 'Book', 120, 10000, 10);

																									

-- Insert data into the orders table
insert into orders (order_id, user_id, pro_id, quantity) values (1001, 10000, 10001, 2);
insert into orders (order_id, user_id, pro_id, quantity) values (1002, 20000, 10005, 1);
insert into orders (order_id, user_id, pro_id, quantity) values (1003, 70000, 10001, 2);
insert into orders (order_id, user_id, pro_id, quantity) values (1004, 30000, 10002, 3);
insert into orders (order_id, user_id, pro_id, quantity) values (1005, 10000, 10006, 1);
insert into orders (order_id, user_id, pro_id, quantity) values (1006, 10000, 10007, 1);
insert into orders (order_id, user_id, pro_id, quantity) values (1007, 80000, 10009, 1);
insert into orders (order_id, user_id, pro_id, quantity) values (1008, 80000, 10002, 1);
insert into orders (order_id, user_id, pro_id, quantity) values (1009, 40000, 10001, 2);
insert into orders (order_id, user_id, pro_id, quantity) values (1010, 30000, 10003, 1);

-- Insert data into the transaction table
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1011, 10000, 1001, 40000, date '2024-05-01');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1022, 20000, 1002, 14450, date '2024-05-04');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1033, 70000, 1003, 40000, date '2024-04-02');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1044, 30000, 1004, 54000, date '2024-05-09');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1055, 10000, 1005, 20000, date '2024-04-08');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1066, 10000, 1006, 11999, date '2024-05-09');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1077, 80000, 1007, 18999, date '2024-05-08');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1088, 80000, 1008, 18000, date '2024-05-04');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1099, 40000, 1009, 40000, date '2024-05-20');
insert into transaction (transaction_id, user_id, order_id, payment_amount, payment_date) values (1012, 30000, 1010, 20000, date '2024-05-06');

-- Insert data into the Reviews table
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (6, 60000, 10006, 5, 'Amazing perfume, long-lasting fragrance.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (7, 70000, 10007, 4, 'Spacious bag, good for daily use.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (8, 80000, 10008, 5, 'High-quality iPhone, worth the price.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (9, 90000, 10009, 5, 'Beautiful jewelry, great craftsmanship.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (10, 12334, 10010, 4, 'Interesting book, enjoyed reading it.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (1, 10000, 10001, 5, 'Great product! Highly recommended.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (2, 20000, 10002, 4, 'Nice dress, but a bit pricey.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (3, 30000, 10003, 5, 'Excellent camera quality.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (4, 40000, 10004, 3, 'Decent doll, but the price could be lower.');
INSERT INTO Reviews (review_id, user_id, pro_id, rating, comments) VALUES (5, 50000, 10005, 4, 'Stylish watch, love the design.');