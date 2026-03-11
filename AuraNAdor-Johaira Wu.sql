CREATE DATABASE AURANADORN;

CREATE TABLE branches(
brand_id INT PRIMARY KEY,
branch_name VARCHAR(50),
city VARCHAR(50),
region VARCHAR(50)
);

CREATE TABLE product_categories(
category_id INT PRIMARY KEY,
category_name VARCHAR(50)
);

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category_id INT REFERENCES product_categories(category_id),
unit_price DECIMAL(10,2)
);

CREATE TABLE Sales_Associates(
associate_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
branch_id INT REFERENCES branches(branch_id)
);

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
membership_level VARCHAR(20)
);

CREATE TABLE sales_transaction(
sale_id INT PRIMARY KEY,
product_id INT REFERENCES products(product_id), 
customer_id INT REFERENCES customers(customer_id),
associate_id INT REFERENCES sales_associates(associate_id),
branch_id INT REFERENCES branches(branch_id), 
sale_date DATE, 
quantity INT, 
total_amount DECIMAL(10,2)
);

INSERT INTO branches VALUES (1, 'Luxe Manila', 'Makati', 'NCR');
INSERT INTO branches VALUES (2, 'Luxe Cebu', 'Cebu City', 'Visayas');
INSERT INTO branches VALUES (3, 'Luxe Davao', 'Davao City', 'Mindanao');
INSERT INTO branches VALUES (4, 'Luxe North', 'Baguio', 'Luzon');
INSERT INTO branches VALUES (5, 'Luxe South', 'Alabang', 'NCR');
INSERT INTO branches VALUES (6, 'Luxe Iloilo', 'Iloilo City', 'Visayas');
INSERT INTO branches VALUES (7, 'Luxe QC', 'Quezon City', 'NCR');
INSERT INTO branches VALUES (8, 'Luxe CDO', 'Cagayan de Oro', 'Mindanao');
INSERT INTO branches VALUES (9, 'Luxe Clark', 'Pampanga', 'Luzon');
INSERT INTO branches VALUES (10, 'Luxe Taguig', 'BGC', 'NCR');

SELECT * FROM branches;

INSERT INTO Product_Categories VALUES (1, 'Engagement Rings');
INSERT INTO Product_Categories VALUES (2, 'Necklaces');
INSERT INTO Product_Categories VALUES (3, 'Luxury Watches');
INSERT INTO Product_Categories VALUES (4, 'Bracelets');
INSERT INTO Product_Categories VALUES (5, 'Earrings');
INSERT INTO Product_Categories VALUES (6, 'Wedding Bands');
INSERT INTO Product_Categories VALUES (7, 'Pendants');
INSERT INTO Product_Categories VALUES (8, 'Custom Pieces');
INSERT INTO Product_Categories VALUES (9, 'Brooches');
INSERT INTO Product_Categories VALUES (10, 'Anklets');

SELECT * FROM product_categories;

INSERT INTO products VALUES (101, 'Diamond Solitaire', 1, 4500.00);
INSERT INTO products VALUES (102, 'Gold Cuban Link', 2, 1200.00);
INSERT INTO products VALUES (103, 'Chronograph Pro Z', 3, 8500.00);
INSERT INTO products VALUES (104, 'Pearl Strand', 2, 800.00);
INSERT INTO products VALUES (105, 'Tennis Bracelet', 4, 3200.00);
INSERT INTO Products VALUES (106, 'Sapphire Studs', 5, 1500.00);
INSERT INTO Products VALUES (107, 'Classic Wedding Band', 6, 950.00);
INSERT INTO Products VALUES (108, 'Ruby Heart Pendant', 7, 2200.00);
INSERT INTO Products VALUES (109, 'Silver Bangle', 4, 450.00);
INSERT INTO Products VALUES (110, 'Divers Watch Elite', 3, 9500.00);

SELECT * FROM products;

INSERT INTO sales_associates VALUES (10, 'Maria', 'Santos', 1);
INSERT INTO sales_associates VALUES (11, 'Juan', 'Dela Cruz', 2);
INSERT INTO sales_associates VALUES (12, 'Elena', 'Reyes', 3);
INSERT INTO sales_associates VALUES (13, 'Ricardo', 'Lim', 5);
INSERT INTO sales_associates VALUES (14, 'Sofia', 'Garcia', 1);
INSERT INTO sales_associates VALUES (15, 'Antonio', 'Luna', 10);
INSERT INTO sales_associates VALUES (16, 'Isabella', 'Cruz', 7);
INSERT INTO sales_associates VALUES (17, 'Mateo', 'Aquino', 4);
INSERT INTO sales_associates VALUES (18, 'Camila', 'Perez', 9);
INSERT INTO sales_associates VALUES (19, 'Gabriel', 'Bautista', 8);

SELECT * FROM sales_associates;

INSERT INTO customers VALUES (5001, 'Alicia', 'Villanueva', 'Elite');
INSERT INTO customers VALUES (5002, 'Roberto', 'Guzman', 'Gold');
INSERT INTO customers VALUES (5003, 'Clara', 'Soriano', 'Platinum');
INSERT INTO customers VALUES (5004, 'Fernando', 'Mendoza', 'Gold');
INSERT INTO customers VALUES (5005, 'Beatriz', 'Pascual', 'Elite');
INSERT INTO customers VALUES (5006, 'Ricardo', 'Dizon', 'Platinum');
INSERT INTO customers VALUES (5007, 'Teresa', 'Salvador', 'Gold');
INSERT INTO customers VALUES (5008, 'Manuel', 'Asuncion', 'Elite');
INSERT INTO customers VALUES (5009, 'Elena', 'Belmonte', 'Platinum');
INSERT INTO customers VALUES (5010, 'Santi', 'Lazaro', 'Gold');
INSERT INTO customers VALUES (5011, 'Gabriel', 'Santos', 'Elite');
INSERT INTO customers VALUES (5012, 'Liza', 'Reyes', 'Gold');
INSERT INTO customers VALUES (5013, 'Mateo', 'Valdez', 'Platinum');
INSERT INTO customers VALUES (5014, 'Sofia', 'Castillo', 'Elite');
INSERT INTO customers VALUES (5015, 'Joaquin', 'Rivera', 'Gold');
INSERT INTO customers VALUES (5016, 'Isabella', 'Aquino', 'Platinum');
INSERT INTO customers VALUES (5017, 'Emilio', 'Corpuz', 'Gold');
INSERT INTO customers VALUES (5018, 'Camila', 'Del Rosario', 'Elite');
INSERT INTO customers VALUES (5019, 'Tomas', 'Navarro', 'Platinum');
INSERT INTO customers VALUES (5020, 'Adriana', 'Bernardo', 'Gold');
INSERT INTO customers VALUES (5021, 'Rafael', 'Vargas', 'Elite');
INSERT INTO customers VALUES (5022, 'Bianca', 'Estrella', 'Gold');
INSERT INTO customers VALUES (5023, 'Lucas', 'Pineda', 'Platinum');
INSERT INTO customers VALUES (5024, 'Natalia', 'Sarmiento', 'Elite');
INSERT INTO customers VALUES (5025, 'Julian', 'Mercado', 'Gold');
INSERT INTO customers VALUES (5026, 'Victoria', 'Fausto', 'Platinum');
INSERT INTO customers VALUES (5027, 'Diego', 'Ocampo', 'Gold');
INSERT INTO customers VALUES (5028, 'Maya', 'Gonzales', 'Elite');
INSERT INTO customers VALUES (5029, 'Sebastian', 'Ramos', 'Platinum');
INSERT INTO customers VALUES (5030, 'Paola', 'Bautista', 'Gold');
INSERT INTO customers VALUES (5031, 'Andres', 'Madrigal', 'Elite');
INSERT INTO customers VALUES (5032, 'Daniela', 'Ibarra', 'Gold');
INSERT INTO customers VALUES (5033, 'Marco', 'Cordero', 'Platinum');
INSERT INTO customers VALUES (5034, 'Ximena', 'Soler', 'Elite');
INSERT INTO customers VALUES (5035, 'Luis', 'Torres', 'Gold');
INSERT INTO customers VALUES (5036, 'Valentina', 'Vega', 'Platinum');
INSERT INTO customers VALUES (5037, 'Oscar', 'Cabrera', 'Gold');
INSERT INTO customers VALUES (5038, 'Lucia', 'Herrera', 'Elite');
INSERT INTO customers VALUES (5039, 'Hugo', 'Castro', 'Platinum');
INSERT INTO customers VALUES (5040, 'Sara', 'Montenegro', 'Gold');
INSERT INTO customers VALUES (5041, 'Felix', 'De Leon', 'Elite');
INSERT INTO customers VALUES (5042, 'Clara', 'Abad', 'Gold');
INSERT INTO customers VALUES (5043, 'Ivan', 'Ybanez', 'Platinum');
INSERT INTO customers VALUES (5044, 'Giselle', 'Mendoza', 'Elite');
INSERT INTO customers VALUES (5045, 'Rico', 'Bermudez', 'Gold');
INSERT INTO customers VALUES (5046, 'Nina', 'Legaspi', 'Platinum');
INSERT INTO customers VALUES (5047, 'Victor', 'Galang', 'Gold');
INSERT INTO customers VALUES (5048, 'Rosa', 'Aragon', 'Elite');
INSERT INTO customers VALUES (5049, 'Dante', 'Sotto', 'Platinum');
INSERT INTO customers VALUES (5050, 'Carla', 'Enriquez', 'Gold');

SELECT * FROM customers;

INSERT INTO sales_transaction VALUES (1, 101, 5001, 10, 1, '2026-01-02', 1, 4500.00);
INSERT INTO sales_transaction VALUES (2, 103, 5012, 11, 2, '2026-01-02', 1, 8500.00);
INSERT INTO sales_transaction VALUES (3, 110, 5045, 14, 5, '2026-01-03', 1, 9500.00);
INSERT INTO sales_transaction VALUES (4, 107, 5022, 12, 3, '2026-01-04', 2, 1900.00);
INSERT INTO sales_transaction VALUES (5, 108, 5009, 13, 4, '2026-01-05', 1, 2200.00);
INSERT INTO sales_transaction VALUES (6, 105, 5033, 10, 1, '2026-01-05', 1, 3200.00);
INSERT INTO sales_transaction VALUES (7, 102, 5018, 11, 2, '2026-01-06', 3, 3600.00);
INSERT INTO Sales_Transaction VALUES (8, 104, 5005, 14, 5, '2026-01-07', 1, 800.00);
INSERT INTO sales_transaction VALUES (9, 106, 5029, 12, 3, '2026-01-08', 1, 1500.00);
INSERT INTO sales_transaction VALUES (10, 109, 5040, 13, 4, '2026-01-10', 2, 900.00);
INSERT INTO sales_transaction VALUES (11, 101, 5002, 10, 1, '2026-01-11', 1, 4500.00);
INSERT INTO sales_transaction VALUES (12, 110, 5015, 15, 10, '2026-01-11', 1, 9500.00);
INSERT INTO sales_transaction VALUES (13, 105, 5028, 11, 2, '2026-01-12', 1, 7000.00);
INSERT INTO sales_transaction VALUES (14, 102, 5039, 16, 7, '2026-01-12', 2, 2400.00);
INSERT INTO sales_transaction VALUES (15, 109, 5004, 13, 4, '2026-01-13', 1, 2200.00);
INSERT INTO sales_transaction VALUES (16, 104, 5011, 12, 3, '2026-01-14', 1, 800.00);
INSERT INTO sales_transaction VALUES (17, 101, 5021, 14, 5, '2026-01-15', 1, 4500.00);
INSERT INTO sales_transaction VALUES (18, 103, 5035, 17, 4, '2026-01-15', 1, 8500.00);
INSERT INTO sales_transaction VALUES (19, 106, 5042, 18, 9, '2026-01-16', 1, 1500.00);
INSERT INTO sales_transaction VALUES (20, 108, 5003, 10, 1, '2026-01-17', 2, 4400.00);
INSERT INTO sales_transaction VALUES (21, 110, 5016, 19, 8, '2026-01-18', 1, 9500.00);
INSERT INTO sales_transaction VALUES (22, 107, 5023, 11, 2, '2026-01-18', 1, 950.00);
INSERT INTO sales_transaction VALUES (23, 102, 5031, 12, 3, '2026-01-19', 1, 1200.00);
INSERT INTO sales_transaction VALUES (24, 105, 5048, 13, 4, '2026-01-20', 1, 3200.00);
INSERT INTO sales_transaction VALUES (25, 101, 5007, 14, 5, '2026-01-20', 1, 4500.00);
INSERT INTO sales_transaction VALUES (26, 104, 5013, 15, 10, '2026-01-21', 3, 2400.00);
INSERT INTO sales_transaction VALUES (27, 103, 5024, 16, 7, '2026-01-22', 1, 8500.00);
INSERT INTO sales_transaction VALUES (28, 109, 5037, 17, 4, '2026-01-22', 1, 2200.00);
INSERT INTO sales_transaction VALUES (29, 106, 5049, 18, 9, '2026-01-23', 2, 3000.00);
INSERT INTO sales_transaction VALUES (30, 110, 5006, 10, 1, '2026-01-24', 1, 9500.00);
INSERT INTO sales_transaction VALUES (31, 108, 5019, 11, 2, '2026-01-24', 1, 2200.00);
INSERT INTO sales_transaction VALUES (32, 101, 5026, 19, 8, '2026-01-25', 2, 9000.00);
INSERT INTO sales_transaction VALUES (33, 105, 5032, 12, 3, '2026-01-25', 1, 3200.00);
INSERT INTO sales_transaction VALUES (34, 102, 5041, 13, 4, '2026-01-26', 1, 1200.00);
INSERT INTO sales_transaction VALUES (35, 107, 5008, 14, 5, '2026-01-27', 1, 950.00);
INSERT INTO sales_transaction VALUES (36, 110, 5014, 15, 10, '2026-01-27', 1, 9500.00);
INSERT INTO sales_transaction VALUES (37, 103, 5027, 16, 7, '2026-01-28', 1, 8500.00);
INSERT INTO sales_transaction VALUES (38, 104, 5038, 10, 1, '2026-01-29', 1, 800.00);
INSERT INTO sales_transaction VALUES (39, 106, 5050, 11, 2, '2026-01-30', 1, 1500.00);
INSERT INTO sales_transaction VALUES (40, 101, 5005, 12, 3, '2026-01-31', 1, 4500.00);
INSERT INTO sales_transaction VALUES (41, 109, 5017, 13, 4, '2026-01-31', 1, 2200.00);
INSERT INTO sales_transaction VALUES (42, 110, 5022, 14, 5, '2026-02-01', 1, 9500.00);
INSERT INTO sales_transaction VALUES (43, 105, 5033, 15, 10, '2026-02-01', 1, 3200.00);
INSERT INTO sales_transaction VALUES (44, 102, 5044, 16, 7, '2026-02-02', 4, 4800.00);
INSERT INTO sales_transaction VALUES (45, 108, 5001, 17, 4, '2026-02-03', 1, 2200.00);
INSERT INTO sales_transaction VALUES (46, 101, 5010, 10, 1, '2026-02-04', 1, 4500.00);
INSERT INTO sales_transaction VALUES (47, 103, 5025, 11, 2, '2026-02-05', 1, 8500.00);
INSERT INTO sales_transaction VALUES (48, 104, 5036, 19, 8, '2026-02-06', 2, 1600.00);
INSERT INTO sales_transaction VALUES (49, 106, 5043, 12, 3, '2026-02-07', 1, 1500.00);
INSERT INTO sales_transaction VALUES (50, 107, 5002, 13, 4, '2026-02-07', 1, 950.00);
INSERT INTO sales_transaction VALUES (51, 101, 5005, 14, 5, '2026-02-08', 1, 4500.00);
INSERT INTO sales_transaction VALUES (52, 109, 5018, 15, 10, '2026-02-08', 1, 2200.00);
INSERT INTO sales_transaction VALUES (53, 110, 5029, 10, 1, '2026-02-09', 1, 9500.00);
INSERT INTO sales_transaction VALUES (54, 104, 5040, 16, 7, '2026-02-09', 1, 800.00);
INSERT INTO sales_transaction VALUES (55, 108, 5001, 11, 2, '2026-02-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (56, 101, 5012, 12, 3, '2026-02-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (57, 101, 5023, 13, 4, '2026-02-11', 1, 4500.00);
INSERT INTO sales_transaction VALUES (58, 105, 5034, 14, 5, '2026-02-11', 1, 3200.00);
INSERT INTO sales_transaction VALUES (59, 109, 5045, 17, 4, '2026-02-12', 2, 4400.00);
INSERT INTO sales_transaction VALUES (60, 101, 5006, 10, 1, '2026-02-12', 1, 4500.00);
INSERT INTO sales_transaction VALUES (61, 103, 5017, 18, 9, '2026-02-13', 1, 8500.00);
INSERT INTO sales_transaction VALUES (62, 108, 5028, 11, 2, '2026-02-13', 1, 2200.00);
INSERT INTO sales_transaction VALUES (63, 101, 5039, 12, 3, '2026-02-14', 1, 4500.00); -- Valentine's Day
INSERT INTO sales_transaction VALUES (64, 101, 5050, 13, 4, '2026-02-14', 1, 4500.00); -- Valentine's Day
INSERT INTO sales_transaction VALUES (65, 109, 5002, 14, 5, '2026-02-14', 1, 2200.00); -- Valentine's Day
INSERT INTO sales_transaction VALUES (66, 106, 5013, 15, 10, '2026-02-14', 2, 3000.00); -- Valentine's Day
INSERT INTO sales_transaction VALUES (67, 108, 5024, 19, 8, '2026-02-14', 1, 2200.00); -- Valentine's Day
INSERT INTO sales_transaction VALUES (68, 101, 5035, 16, 7, '2026-02-15', 1, 4500.00);
INSERT INTO sales_transaction VALUES (69, 102, 5046, 10, 1, '2026-02-15', 2, 2400.00);
INSERT INTO sales_transaction VALUES (70, 110, 5007, 11, 2, '2026-02-16', 1, 9500.00);
INSERT INTO sales_transaction VALUES (71, 104, 5018, 12, 3, '2026-02-16', 1, 800.00);
INSERT INTO sales_transaction VALUES (72, 107, 5029, 13, 4, '2026-02-17', 3, 2850.00);
INSERT INTO sales_transaction VALUES (73, 103, 5040, 14, 5, '2026-02-17', 1, 8500.00);
INSERT INTO sales_transaction VALUES (74, 105, 5001, 17, 4, '2026-02-18', 1, 3200.00);
INSERT INTO sales_transaction VALUES (75, 101, 5012, 18, 9, '2026-02-18', 1, 4500.00);
INSERT INTO sales_transaction VALUES (76, 109, 5023, 10, 1, '2026-02-19', 1, 2200.00);
INSERT INTO sales_transaction VALUES (77, 102, 5034, 11, 2, '2026-02-19', 1, 1200.00);
INSERT INTO sales_transaction VALUES (78, 110, 5045, 19, 8, '2026-02-20', 1, 9500.00);
INSERT INTO sales_transaction VALUES (79, 106, 5006, 12, 3, '2026-02-20', 1, 1500.00);
INSERT INTO sales_transaction VALUES (80, 108, 5017, 13, 4, '2026-02-21', 1, 2200.00);
INSERT INTO sales_transaction VALUES (81, 101, 5028, 14, 5, '2026-02-21', 1, 4500.00);
INSERT INTO sales_transaction VALUES (82, 104, 5039, 15, 10, '2026-02-22', 2, 1600.00);
INSERT INTO sales_transaction VALUES (83, 103, 5050, 16, 7, '2026-02-22', 1, 8500.00);
INSERT INTO sales_transaction VALUES (84, 107, 5002, 10, 1, '2026-02-23', 1, 950.00);
INSERT INTO sales_transaction VALUES (85, 105, 5013, 11, 2, '2026-02-23', 1, 3200.00);
INSERT INTO sales_transaction VALUES (86, 101, 5024, 12, 3, '2026-02-24', 1, 4500.00);
INSERT INTO sales_transaction VALUES (87, 109, 5035, 13, 4, '2026-02-24', 1, 2200.00);
INSERT INTO sales_transaction VALUES (88, 102, 5046, 14, 5, '2026-02-25', 1, 1200.00);
INSERT INTO sales_transaction VALUES (89, 110, 5007, 17, 4, '2026-02-25', 1, 9500.00);
INSERT INTO sales_transaction VALUES (90, 106, 5018, 18, 9, '2026-02-26', 1, 1500.00);
INSERT INTO sales_transaction VALUES (91, 108, 5029, 10, 1, '2026-02-26', 1, 2200.00);
INSERT INTO sales_transaction VALUES (92, 101, 5040, 11, 2, '2026-02-27', 1, 4500.00);
INSERT INTO sales_transaction VALUES (93, 104, 5001, 19, 8, '2026-02-27', 1, 800.00);
INSERT INTO sales_transaction VALUES (94, 103, 5012, 12, 3, '2026-02-28', 1, 8500.00);
INSERT INTO sales_transaction VALUES (95, 107, 5023, 13, 4, '2026-02-28', 1, 950.00);
INSERT INTO sales_transaction VALUES (96, 105, 5034, 14, 5, '2026-03-01', 1, 3200.00);
INSERT INTO sales_transaction VALUES (97, 101, 5045, 15, 10, '2026-03-01', 1, 4500.00);
INSERT INTO sales_transaction VALUES (98, 109, 5006, 16, 7, '2026-03-02', 1, 2200.00);
INSERT INTO sales_transaction VALUES (99, 102, 5017, 10, 1, '2026-03-02', 3, 3600.00);
INSERT INTO sales_transaction VALUES (100, 110, 5028, 11, 2, '2026-03-03', 1, 9500.00);

-- MARCH 1st to MARCH 5th
INSERT INTO sales_transaction VALUES (101, 110, 5001, 15, 10, '2026-03-01', 1, 9500.00);
INSERT INTO sales_transaction VALUES (102, 105, 5022, 12, 3, '2026-03-01', 1, 3200.00);
INSERT INTO sales_transaction VALUES (103, 103, 5045, 14, 5, '2026-03-01', 1, 8500.00);
INSERT INTO sales_transaction VALUES (104, 101, 5009, 10, 1, '2026-03-01', 1, 4500.00);
INSERT INTO sales_transaction VALUES (105, 107, 5033, 11, 2, '2026-03-02', 2, 1900.00);
INSERT INTO sales_transaction VALUES (106, 110, 5018, 15, 10, '2026-03-02', 1, 9500.00);
INSERT INTO sales_transaction VALUES (107, 102, 5005, 13, 4, '2026-03-02', 3, 3600.00);
INSERT INTO sales_transaction VALUES (108, 108, 5029, 16, 7, '2026-03-02', 1, 2200.00);
INSERT INTO sales_transaction VALUES (109, 106, 5040, 12, 3, '2026-03-03', 1, 1500.00);
INSERT INTO sales_transaction VALUES (110, 110, 5008, 15, 10, '2026-03-03', 1, 9500.00);
INSERT INTO sales_transaction VALUES (111, 104, 5011, 14, 5, '2026-03-03', 1, 800.00);
INSERT INTO sales_transaction VALUES (112, 101, 5035, 10, 1, '2026-03-03', 1, 4500.00);
INSERT INTO sales_transaction VALUES (113, 103, 5026, 17, 4, '2026-03-04', 1, 8500.00);
INSERT INTO sales_transaction VALUES (114, 109, 5048, 18, 9, '2026-03-04', 1, 2200.00);
INSERT INTO sales_transaction VALUES (115, 110, 5003, 15, 10, '2026-03-04', 1, 9500.00);
INSERT INTO sales_transaction VALUES (116, 105, 5016, 11, 2, '2026-03-04', 1, 3200.00);
INSERT INTO sales_transaction VALUES (117, 102, 5031, 16, 7, '2026-03-05', 1, 1200.00);
INSERT INTO sales_transaction VALUES (118, 107, 5044, 13, 4, '2026-03-05', 1, 950.00);
INSERT INTO sales_transaction VALUES (119, 101, 5007, 10, 1, '2026-03-05', 1, 4500.00);
INSERT INTO sales_transaction VALUES (120, 110, 5013, 15, 10, '2026-03-05', 1, 9500.00);
INSERT INTO sales_transaction VALUES (121, 103, 5024, 11, 2, '2026-03-06', 1, 8500.00);
INSERT INTO sales_transaction VALUES (122, 108, 5037, 17, 4, '2026-03-06', 1, 2200.00);
INSERT INTO sales_transaction VALUES (123, 106, 5049, 18, 9, '2026-03-06', 1, 1500.00);
INSERT INTO sales_transaction VALUES (124, 110, 5006, 15, 10, '2026-03-06', 1, 9500.00);
INSERT INTO sales_transaction VALUES (125, 104, 5019, 14, 5, '2026-03-07', 2, 1600.00);
INSERT INTO sales_transaction VALUES (126, 101, 5026, 10, 1, '2026-03-07', 1, 4500.00);
INSERT INTO sales_transaction VALUES (127, 105, 5032, 12, 3, '2026-03-07', 1, 3200.00);
INSERT INTO sales_transaction VALUES (128, 110, 5041, 15, 10, '2026-03-07', 1, 9500.00);
INSERT INTO sales_transaction VALUES (129, 102, 5008, 13, 4, '2026-03-08', 1, 1200.00);
INSERT INTO sales_transaction VALUES (130, 107, 5014, 11, 2, '2026-03-08', 1, 950.00);
INSERT INTO sales_transaction VALUES (131, 103, 5027, 17, 4, '2026-03-08', 1, 8500.00);
INSERT INTO sales_transaction VALUES (132, 110, 5038, 15, 10, '2026-03-08', 1, 9500.00);
INSERT INTO sales_transaction VALUES (133, 109, 5050, 16, 7, '2026-03-09', 1, 2200.00);
INSERT INTO sales_transaction VALUES (134, 106, 5001, 18, 9, '2026-03-09', 1, 1500.00);
INSERT INTO sales_transaction VALUES (135, 101, 5012, 10, 1, '2026-03-09', 1, 4500.00);
INSERT INTO sales_transaction VALUES (136, 110, 5023, 15, 10, '2026-03-09', 1, 9500.00);
INSERT INTO sales_transaction VALUES (137, 104, 5034, 14, 5, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (138, 103, 5045, 17, 4, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (139, 107, 5006, 13, 4, '2026-03-10', 1, 950.00);
INSERT INTO sales_transaction VALUES (140, 110, 5017, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (141, 101, 5001, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (142, 102, 5012, 11, 2, '2026-03-10', 2, 2400.00);
INSERT INTO sales_transaction VALUES (143, 103, 5045, 14, 5, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (144, 110, 5022, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (145, 108, 5009, 13, 4, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (146, 105, 5033, 10, 1, '2026-03-10', 1, 3200.00);
INSERT INTO sales_transaction VALUES (147, 102, 5018, 11, 2, '2026-03-10', 1, 1200.00);
INSERT INTO sales_transaction VALUES (148, 104, 5005, 14, 5, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (149, 106, 5029, 12, 3, '2026-03-10', 1, 1500.00);
INSERT INTO sales_transaction VALUES (150, 110, 5040, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (151, 101, 5002, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (152, 110, 5015, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (153, 105, 5028, 11, 2, '2026-03-10', 1, 7000.00);
INSERT INTO sales_transaction VALUES (154, 102, 5039, 16, 7, '2026-03-10', 2, 2400.00);
INSERT INTO sales_transaction VALUES (155, 109, 5004, 13, 4, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (156, 104, 5011, 12, 3, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (157, 101, 5021, 14, 5, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (158, 103, 5035, 17, 4, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (159, 106, 5042, 18, 9, '2026-03-10', 1, 1500.00);
INSERT INTO sales_transaction VALUES (160, 108, 5003, 10, 1, '2026-03-10', 2, 4400.00);
INSERT INTO sales_transaction VALUES (161, 110, 5016, 19, 8, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (162, 107, 5023, 11, 2, '2026-03-10', 1, 950.00);
INSERT INTO sales_transaction VALUES (163, 102, 5031, 12, 3, '2026-03-10', 1, 1200.00);
INSERT INTO sales_transaction VALUES (164, 105, 5048, 13, 4, '2026-03-10', 1, 3200.00);
INSERT INTO sales_transaction VALUES (165, 101, 5007, 14, 5, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (166, 104, 5013, 15, 10, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (167, 103, 5024, 16, 7, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (168, 109, 5037, 17, 4, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (169, 106, 5049, 18, 9, '2026-03-10', 2, 3000.00);
INSERT INTO sales_transaction VALUES (170, 110, 5006, 10, 1, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (171, 108, 5019, 11, 2, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (172, 101, 5026, 19, 8, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (173, 105, 5032, 12, 3, '2026-03-10', 1, 3200.00);
INSERT INTO sales_transaction VALUES (174, 102, 5041, 13, 4, '2026-03-10', 1, 1200.00);
INSERT INTO sales_transaction VALUES (175, 107, 5008, 14, 5, '2026-03-10', 1, 950.00);
INSERT INTO sales_transaction VALUES (176, 110, 5014, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (177, 103, 5027, 16, 7, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (178, 104, 5038, 10, 1, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (179, 106, 5050, 11, 2, '2026-03-10', 1, 1500.00);
INSERT INTO sales_transaction VALUES (180, 101, 5005, 12, 3, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (181, 109, 5017, 13, 4, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (182, 110, 5022, 14, 5, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (183, 105, 5033, 15, 10, '2026-03-10', 1, 3200.00);
INSERT INTO sales_transaction VALUES (184, 102, 5044, 16, 7, '2026-03-10', 1, 1200.00);
INSERT INTO sales_transaction VALUES (185, 108, 5001, 17, 4, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (186, 101, 5010, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (187, 103, 5025, 11, 2, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (188, 104, 5036, 19, 8, '2026-03-10', 2, 1600.00);
INSERT INTO sales_transaction VALUES (189, 106, 5043, 12, 3, '2026-03-10', 1, 1500.00);
INSERT INTO sales_transaction VALUES (190, 107, 5002, 13, 4, '2026-03-10', 1, 950.00);
INSERT INTO sales_transaction VALUES (191, 110, 5005, 14, 5, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (192, 109, 5018, 15, 10, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (193, 101, 5029, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (194, 104, 5040, 16, 7, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (195, 108, 5001, 11, 2, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (196, 101, 5012, 12, 3, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (197, 101, 5023, 13, 4, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (198, 105, 5034, 14, 5, '2026-03-10', 1, 3200.00);
INSERT INTO sales_transaction VALUES (199, 109, 5045, 17, 4, '2026-03-10', 1, 2200.00);
INSERT INTO sales_transaction VALUES (200, 101, 5006, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (201, 110, 5017, 18, 9, '2026-03-01', 1, 9500.00);
INSERT INTO sales_transaction VALUES (202, 108, 5028, 11, 2, '2026-03-01', 1, 2200.00);
INSERT INTO sales_transaction VALUES (203, 101, 5039, 12, 3, '2026-03-01', 1, 4500.00);
INSERT INTO sales_transaction VALUES (204, 101, 5050, 13, 4, '2026-03-01', 1, 4500.00);
INSERT INTO sales_transaction VALUES (205, 109, 5002, 14, 5, '2026-03-02', 1, 2200.00);
INSERT INTO sales_transaction VALUES (206, 106, 5013, 15, 10, '2026-03-02', 1, 1500.00);
INSERT INTO sales_transaction VALUES (207, 108, 5024, 19, 8, '2026-03-02', 1, 2200.00);
INSERT INTO sales_transaction VALUES (208, 101, 5035, 16, 7, '2026-03-02', 1, 4500.00);
INSERT INTO sales_transaction VALUES (209, 102, 5046, 10, 1, '2026-03-02', 2, 2400.00);
INSERT INTO sales_transaction VALUES (210, 110, 5007, 11, 2, '2026-03-02', 1, 9500.00);
INSERT INTO sales_transaction VALUES (211, 104, 5018, 12, 3, '2026-03-03', 1, 800.00);
INSERT INTO sales_transaction VALUES (212, 107, 5029, 13, 4, '2026-03-03', 1, 950.00);
INSERT INTO sales_transaction VALUES (213, 103, 5040, 14, 5, '2026-03-03', 1, 8500.00);
INSERT INTO sales_transaction VALUES (214, 105, 5001, 17, 4, '2026-03-03', 1, 3200.00);
INSERT INTO sales_transaction VALUES (215, 110, 5012, 18, 9, '2026-03-03', 1, 9500.00);
INSERT INTO sales_transaction VALUES (216, 109, 5023, 10, 1, '2026-03-03', 1, 2200.00);
INSERT INTO sales_transaction VALUES (217, 102, 5034, 11, 2, '2026-03-03', 1, 1200.00);
INSERT INTO sales_transaction VALUES (218, 110, 5045, 19, 8, '2026-03-03', 1, 9500.00);
INSERT INTO sales_transaction VALUES (219, 106, 5006, 12, 3, '2026-03-03', 1, 1500.00);
INSERT INTO sales_transaction VALUES (220, 108, 5017, 13, 4, '2026-03-03', 1, 2200.00);
INSERT INTO sales_transaction VALUES (221, 101, 5028, 14, 5, '2026-03-04', 1, 4500.00);
INSERT INTO sales_transaction VALUES (222, 104, 5039, 15, 10, '2026-03-04', 1, 800.00);
INSERT INTO sales_transaction VALUES (223, 103, 5050, 16, 7, '2026-03-04', 1, 8500.00);
INSERT INTO sales_transaction VALUES (224, 107, 5002, 10, 1, '2026-03-04', 1, 950.00);
INSERT INTO sales_transaction VALUES (225, 105, 5013, 11, 2, '2026-03-05', 1, 3200.00);
INSERT INTO sales_transaction VALUES (226, 101, 5024, 12, 3, '2026-03-05', 1, 4500.00);
INSERT INTO sales_transaction VALUES (227, 109, 5035, 13, 4, '2026-03-05', 1, 2200.00);
INSERT INTO sales_transaction VALUES (228, 102, 5046, 14, 5, '2026-03-05', 1, 1200.00);
INSERT INTO sales_transaction VALUES (229, 110, 5007, 17, 4, '2026-03-06', 1, 9500.00);
INSERT INTO sales_transaction VALUES (230, 106, 5018, 18, 9, '2026-03-06', 1, 1500.00);
INSERT INTO sales_transaction VALUES (231, 108, 5029, 10, 1, '2026-03-06', 1, 2200.00);
INSERT INTO sales_transaction VALUES (232, 101, 5040, 11, 2, '2026-03-06', 1, 4500.00);
INSERT INTO sales_transaction VALUES (233, 104, 5001, 19, 8, '2026-03-07', 2, 1600.00);
INSERT INTO sales_transaction VALUES (234, 103, 5012, 12, 3, '2026-03-07', 1, 8500.00);
INSERT INTO sales_transaction VALUES (235, 110, 5023, 15, 10, '2026-03-07', 1, 9500.00);
INSERT INTO sales_transaction VALUES (236, 105, 5034, 14, 5, '2026-03-07', 1, 3200.00);
INSERT INTO sales_transaction VALUES (237, 101, 5045, 15, 10, '2026-03-07', 1, 4500.00);
INSERT INTO sales_transaction VALUES (238, 109, 5006, 16, 7, '2026-03-07', 1, 2200.00);
INSERT INTO sales_transaction VALUES (239, 102, 5017, 10, 1, '2026-03-07', 1, 1200.00);
INSERT INTO sales_transaction VALUES (240, 110, 5028, 11, 2, '2026-03-07', 1, 9500.00);
INSERT INTO sales_transaction VALUES (241, 103, 5039, 12, 3, '2026-03-08', 1, 8500.00);
INSERT INTO sales_transaction VALUES (242, 110, 5050, 13, 4, '2026-03-08', 1, 9500.00);
INSERT INTO sales_transaction VALUES (243, 106, 5001, 14, 5, '2026-03-08', 1, 1500.00);
INSERT INTO sales_transaction VALUES (244, 108, 5012, 15, 10, '2026-03-08', 1, 2200.00);
INSERT INTO sales_transaction VALUES (245, 101, 5023, 16, 7, '2026-03-08', 1, 4500.00);
INSERT INTO sales_transaction VALUES (246, 104, 5034, 10, 1, '2026-03-08', 1, 800.00);
INSERT INTO sales_transaction VALUES (247, 103, 5045, 11, 2, '2026-03-08', 1, 8500.00);
INSERT INTO sales_transaction VALUES (248, 107, 5006, 12, 3, '2026-03-09', 1, 950.00);
INSERT INTO sales_transaction VALUES (249, 110, 5017, 13, 4, '2026-03-09', 1, 9500.00);
INSERT INTO sales_transaction VALUES (250, 102, 5028, 14, 5, '2026-03-09', 1, 1200.00);
INSERT INTO sales_transaction VALUES (251, 101, 5039, 10, 1, '2026-03-09', 1, 4500.00);
INSERT INTO sales_transaction VALUES (252, 110, 5050, 15, 10, '2026-03-09', 1, 9500.00);
INSERT INTO sales_transaction VALUES (253, 105, 5001, 12, 3, '2026-03-09', 1, 3200.00);
INSERT INTO sales_transaction VALUES (254, 103, 5012, 14, 5, '2026-03-09', 1, 8500.00);
INSERT INTO sales_transaction VALUES (255, 101, 5023, 10, 1, '2026-03-09', 1, 4500.00);
INSERT INTO sales_transaction VALUES (256, 104, 5034, 13, 4, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (257, 103, 5045, 11, 2, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (258, 110, 5006, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (259, 110, 5017, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (260, 101, 5028, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (261, 101, 5039, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (262, 110, 5050, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (263, 105, 5001, 12, 3, '2026-03-10', 1, 3200.00);
INSERT INTO sales_transaction VALUES (264, 103, 5012, 14, 5, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (265, 101, 5023, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (266, 104, 5034, 13, 4, '2026-03-10', 1, 800.00);
INSERT INTO sales_transaction VALUES (267, 103, 5045, 11, 2, '2026-03-10', 1, 8500.00);
INSERT INTO sales_transaction VALUES (268, 110, 5006, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (269, 101, 5017, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (270, 110, 5028, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (271, 110, 5001, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (272, 101, 5002, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (273, 110, 5003, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (274, 101, 5004, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (275, 110, 5005, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (276, 101, 5006, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (277, 110, 5007, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (278, 101, 5008, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (279, 110, 5009, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (280, 101, 5010, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (281, 110, 5011, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (282, 101, 5012, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (283, 110, 5013, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (284, 101, 5014, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (285, 110, 5015, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (286, 101, 5016, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (287, 110, 5017, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (288, 101, 5018, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (289, 110, 5019, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (290, 101, 5020, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (291, 110, 5021, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (292, 101, 5022, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (293, 110, 5023, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (294, 101, 5024, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (295, 110, 5025, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (296, 101, 5026, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (297, 110, 5027, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (298, 101, 5028, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (299, 110, 5029, 15, 10, '2026-03-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (300, 101, 5030, 10, 1, '2026-03-10', 1, 4500.00);
INSERT INTO sales_transaction VALUES (301, 102, 5031, 11, 2, '2026-03-11', 2, 2400.00);
INSERT INTO sales_transaction VALUES (302, 104, 5032, 12, 3, '2026-03-11', 1, 800.00);
INSERT INTO sales_transaction VALUES (303, 106, 5033, 13, 4, '2026-03-11', 1, 1500.00);
INSERT INTO sales_transaction VALUES (304, 105, 5034, 14, 5, '2026-03-11', 1, 3200.00);
INSERT INTO sales_transaction VALUES (305, 109, 5035, 15, 10, '2026-03-12', 1, 450.00);
INSERT INTO sales_transaction VALUES (306, 101, 5036, 16, 7, '2026-03-12', 1, 4500.00);
INSERT INTO sales_transaction VALUES (307, 103, 5037, 17, 4, '2026-03-12', 1, 8500.00);
INSERT INTO sales_transaction VALUES (308, 107, 5038, 18, 9, '2026-03-12', 1, 950.00);
INSERT INTO sales_transaction VALUES (309, 110, 5039, 19, 8, '2026-03-13', 1, 9500.00);
INSERT INTO sales_transaction VALUES (310, 102, 5040, 10, 1, '2026-03-13', 1, 1200.00);
INSERT INTO sales_transaction VALUES (311, 104, 5041, 11, 2, '2026-03-13', 3, 2400.00);
INSERT INTO sales_transaction VALUES (312, 106, 5042, 12, 3, '2026-03-13', 1, 1500.00);
INSERT INTO sales_transaction VALUES (313, 105, 5043, 13, 4, '2026-03-14', 1, 3200.00);
INSERT INTO sales_transaction VALUES (314, 109, 5044, 14, 5, '2026-03-14', 2, 900.00);
INSERT INTO sales_transaction VALUES (315, 101, 5045, 15, 10, '2026-03-14', 1, 4500.00);
INSERT INTO sales_transaction VALUES (316, 103, 5046, 16, 7, '2026-03-14', 1, 8500.00);
INSERT INTO sales_transaction VALUES (317, 107, 5047, 17, 4, '2026-03-15', 1, 950.00);
INSERT INTO sales_transaction VALUES (318, 110, 5048, 18, 9, '2026-03-15', 1, 9500.00);
INSERT INTO sales_transaction VALUES (319, 102, 5049, 19, 8, '2026-03-15', 1, 1200.00);
INSERT INTO sales_transaction VALUES (320, 104, 5050, 10, 1, '2026-03-15', 1, 800.00);
INSERT INTO sales_transaction VALUES (321, 106, 5001, 11, 2, '2026-03-16', 1, 1500.00);
INSERT INTO sales_transaction VALUES (322, 105, 5002, 12, 3, '2026-03-16', 1, 3200.00);
INSERT INTO sales_transaction VALUES (323, 109, 5003, 13, 4, '2026-03-16', 4, 1800.00);
INSERT INTO sales_transaction VALUES (324, 101, 5004, 14, 5, '2026-03-16', 1, 4500.00);
INSERT INTO sales_transaction VALUES (325, 103, 5005, 15, 10, '2026-03-17', 1, 8500.00);
INSERT INTO sales_transaction VALUES (326, 107, 5006, 16, 7, '2026-03-17', 1, 950.00);
INSERT INTO sales_transaction VALUES (327, 110, 5007, 17, 4, '2026-03-17', 1, 9500.00);
INSERT INTO sales_transaction VALUES (328, 102, 5008, 18, 9, '2026-03-17', 1, 1200.00);
INSERT INTO sales_transaction VALUES (329, 104, 5009, 19, 8, '2026-03-18', 1, 800.00);
INSERT INTO sales_transaction VALUES (330, 106, 5010, 10, 1, '2026-03-18', 1, 1500.00);
INSERT INTO sales_transaction VALUES (331, 105, 5011, 11, 2, '2026-03-18', 1, 3200.00);
INSERT INTO sales_transaction VALUES (332, 109, 5012, 12, 3, '2026-03-18', 1, 450.00);
INSERT INTO sales_transaction VALUES (333, 101, 5013, 13, 4, '2026-03-19', 1, 4500.00);
INSERT INTO sales_transaction VALUES (334, 103, 5014, 14, 5, '2026-03-19', 1, 8500.00);
INSERT INTO sales_transaction VALUES (335, 107, 5015, 15, 10, '2026-03-19', 1, 950.00);
INSERT INTO sales_transaction VALUES (336, 110, 5016, 16, 7, '2026-03-19', 1, 9500.00);
INSERT INTO sales_transaction VALUES (337, 102, 5017, 17, 4, '2026-03-20', 1, 1200.00);
INSERT INTO sales_transaction VALUES (338, 104, 5018, 18, 9, '2026-03-20', 1, 800.00);
INSERT INTO sales_transaction VALUES (339, 106, 5019, 19, 8, '2026-03-20', 1, 1500.00);
INSERT INTO sales_transaction VALUES (340, 105, 5020, 10, 1, '2026-03-20', 1, 3200.00);
INSERT INTO sales_transaction VALUES (341, 109, 5021, 11, 2, '2026-03-21', 1, 450.00);
INSERT INTO sales_transaction VALUES (342, 101, 5022, 12, 3, '2026-03-21', 1, 4500.00);
INSERT INTO sales_transaction VALUES (343, 103, 5023, 13, 4, '2026-03-21', 1, 8500.00);
INSERT INTO sales_transaction VALUES (344, 107, 5024, 14, 5, '2026-03-21', 1, 950.00);
INSERT INTO sales_transaction VALUES (345, 110, 5025, 15, 10, '2026-03-22', 1, 9500.00);
INSERT INTO sales_transaction VALUES (346, 102, 5026, 16, 7, '2026-03-22', 2, 2400.00);
INSERT INTO sales_transaction VALUES (347, 104, 5027, 17, 4, '2026-03-22', 1, 800.00);
INSERT INTO sales_transaction VALUES (348, 106, 5028, 18, 9, '2026-03-22', 1, 1500.00);
INSERT INTO sales_transaction VALUES (349, 105, 5029, 19, 8, '2026-03-23', 1, 3200.00);
INSERT INTO sales_transaction VALUES (350, 109, 5030, 10, 1, '2026-03-23', 1, 450.00);
INSERT INTO sales_transaction VALUES (351, 101, 5031, 11, 2, '2026-03-23', 1, 4500.00);
INSERT INTO sales_transaction VALUES (352, 103, 5032, 12, 3, '2026-03-23', 1, 8500.00);
INSERT INTO sales_transaction VALUES (353, 107, 5033, 13, 4, '2026-03-24', 1, 950.00);
INSERT INTO sales_transaction VALUES (354, 110, 5034, 14, 5, '2026-03-24', 1, 9500.00);
INSERT INTO sales_transaction VALUES (355, 102, 5035, 15, 10, '2026-03-24', 1, 1200.00);
INSERT INTO sales_transaction VALUES (356, 104, 5036, 16, 7, '2026-03-24', 1, 800.00);
INSERT INTO sales_transaction VALUES (357, 106, 5037, 17, 4, '2026-03-25', 1, 1500.00);
INSERT INTO sales_transaction VALUES (358, 105, 5038, 18, 9, '2026-03-25', 1, 3200.00);
INSERT INTO sales_transaction VALUES (359, 109, 5039, 19, 8, '2026-03-25', 1, 450.00);
INSERT INTO sales_transaction VALUES (360, 101, 5040, 10, 1, '2026-03-25', 1, 4500.00);
INSERT INTO sales_transaction VALUES (361, 103, 5041, 11, 2, '2026-03-26', 1, 8500.00);
INSERT INTO sales_transaction VALUES (362, 107, 5042, 12, 3, '2026-03-26', 1, 950.00);
INSERT INTO sales_transaction VALUES (363, 110, 5043, 13, 4, '2026-03-26', 1, 9500.00);
INSERT INTO sales_transaction VALUES (364, 102, 5044, 14, 5, '2026-03-26', 1, 1200.00);
INSERT INTO sales_transaction VALUES (365, 104, 5045, 15, 10, '2026-03-27', 1, 800.00);
INSERT INTO sales_transaction VALUES (366, 106, 5046, 16, 7, '2026-03-27', 1, 1500.00);
INSERT INTO sales_transaction VALUES (367, 105, 5047, 17, 4, '2026-03-27', 1, 3200.00);
INSERT INTO sales_transaction VALUES (368, 109, 5048, 18, 9, '2026-03-27', 3, 1350.00);
INSERT INTO sales_transaction VALUES (369, 101, 5049, 19, 8, '2026-03-28', 1, 4500.00);
INSERT INTO sales_transaction VALUES (370, 103, 5050, 10, 1, '2026-03-28', 1, 8500.00);
INSERT INTO sales_transaction VALUES (371, 107, 5001, 11, 2, '2026-03-28', 1, 950.00);
INSERT INTO sales_transaction VALUES (372, 110, 5002, 12, 3, '2026-03-28', 1, 9500.00);
INSERT INTO sales_transaction VALUES (373, 102, 5003, 13, 4, '2026-03-29', 1, 1200.00);
INSERT INTO sales_transaction VALUES (374, 104, 5004, 14, 5, '2026-03-29', 1, 800.00);
INSERT INTO sales_transaction VALUES (375, 106, 5005, 15, 10, '2026-03-29', 1, 1500.00);
INSERT INTO sales_transaction VALUES (376, 105, 5006, 16, 7, '2026-03-29', 1, 3200.00);
INSERT INTO sales_transaction VALUES (377, 109, 5007, 17, 4, '2026-03-30', 1, 450.00);
INSERT INTO sales_transaction VALUES (378, 101, 5008, 18, 9, '2026-03-30', 1, 4500.00);
INSERT INTO sales_transaction VALUES (379, 103, 5009, 19, 8, '2026-03-30', 1, 8500.00);
INSERT INTO sales_transaction VALUES (380, 107, 5010, 10, 1, '2026-03-30', 1, 950.00);
INSERT INTO sales_transaction VALUES (381, 110, 5011, 11, 2, '2026-03-31', 1, 9500.00);
INSERT INTO sales_transaction VALUES (382, 102, 5012, 12, 3, '2026-03-31', 1, 1200.00);
INSERT INTO sales_transaction VALUES (383, 104, 5013, 13, 4, '2026-03-31', 1, 800.00);
INSERT INTO sales_transaction VALUES (384, 106, 5014, 14, 5, '2026-03-31', 1, 1500.00);
INSERT INTO sales_transaction VALUES (385, 105, 5015, 15, 10, '2026-03-31', 1, 3200.00);
INSERT INTO sales_transaction VALUES (386, 109, 5016, 16, 7, '2026-03-31', 1, 450.00);

INSERT INTO sales_transaction VALUES (387, 101, 5017, 17, 4, '2026-04-01', 1, 4500.00);
INSERT INTO sales_transaction VALUES (388, 103, 5018, 18, 9, '2026-04-01', 1, 8500.00);
INSERT INTO sales_transaction VALUES (389, 107, 5019, 19, 8, '2026-04-01', 1, 950.00);
INSERT INTO sales_transaction VALUES (390, 110, 5020, 10, 1, '2026-04-01', 1, 9500.00);
INSERT INTO sales_transaction VALUES (391, 102, 5021, 11, 2, '2026-04-02', 1, 1200.00);
INSERT INTO sales_transaction VALUES (392, 104, 5022, 12, 3, '2026-04-02', 1, 800.00);
INSERT INTO sales_transaction VALUES (393, 106, 5023, 13, 4, '2026-04-02', 1, 1500.00);
INSERT INTO sales_transaction VALUES (394, 105, 5024, 14, 5, '2026-04-02', 1, 3200.00);
INSERT INTO sales_transaction VALUES (395, 109, 5025, 15, 10, '2026-04-03', 1, 450.00);
INSERT INTO sales_transaction VALUES (396, 101, 5026, 16, 7, '2026-04-03', 1, 4500.00);
INSERT INTO sales_transaction VALUES (397, 103, 5027, 17, 4, '2026-04-03', 1, 8500.00);
INSERT INTO sales_transaction VALUES (398, 107, 5028, 18, 9, '2026-04-03', 1, 950.00);
INSERT INTO sales_transaction VALUES (399, 110, 5029, 19, 8, '2026-04-04', 1, 9500.00);
INSERT INTO sales_transaction VALUES (400, 102, 5030, 10, 1, '2026-04-04', 1, 1200.00);
INSERT INTO sales_transaction VALUES (401, 104, 5031, 11, 2, '2026-04-05', 1, 800.00);
INSERT INTO sales_transaction VALUES (402, 106, 5032, 12, 3, '2026-04-05', 1, 1500.00);
INSERT INTO sales_transaction VALUES (403, 105, 5033, 13, 4, '2026-04-05', 1, 3200.00);
INSERT INTO sales_transaction VALUES (404, 109, 5034, 14, 5, '2026-04-06', 1, 450.00);
INSERT INTO sales_transaction VALUES (405, 101, 5035, 15, 10, '2026-04-06', 1, 4500.00);
INSERT INTO sales_transaction VALUES (406, 103, 5036, 16, 7, '2026-04-06', 1, 8500.00);
INSERT INTO sales_transaction VALUES (407, 107, 5037, 17, 4, '2026-04-07', 1, 950.00);
INSERT INTO sales_transaction VALUES (408, 110, 5038, 18, 9, '2026-04-07', 1, 9500.00);
INSERT INTO sales_transaction VALUES (409, 102, 5039, 19, 8, '2026-04-07', 1, 1200.00);
INSERT INTO sales_transaction VALUES (410, 104, 5040, 10, 1, '2026-04-08', 1, 800.00);
INSERT INTO sales_transaction VALUES (411, 106, 5041, 11, 2, '2026-04-08', 1, 1500.00);
INSERT INTO sales_transaction VALUES (412, 105, 5042, 12, 3, '2026-04-08', 1, 3200.00);
INSERT INTO sales_transaction VALUES (413, 109, 5043, 13, 4, '2026-04-09', 1, 450.00);
INSERT INTO sales_transaction VALUES (414, 101, 5044, 14, 5, '2026-04-09', 1, 4500.00);
INSERT INTO sales_transaction VALUES (415, 103, 5045, 15, 10, '2026-04-09', 1, 8500.00);
INSERT INTO sales_transaction VALUES (416, 107, 5046, 16, 7, '2026-04-10', 1, 950.00);
INSERT INTO sales_transaction VALUES (417, 110, 5047, 17, 4, '2026-04-10', 1, 9500.00);
INSERT INTO sales_transaction VALUES (418, 102, 5048, 18, 9, '2026-04-10', 1, 1200.00);
INSERT INTO sales_transaction VALUES (419, 104, 5049, 19, 8, '2026-04-11', 1, 800.00);
INSERT INTO sales_transaction VALUES (420, 106, 5050, 10, 1, '2026-04-11', 1, 1500.00);
INSERT INTO sales_transaction VALUES (421, 105, 5001, 15, 10, '2026-04-11', 1, 3200.00);
INSERT INTO sales_transaction VALUES (422, 109, 5002, 10, 1, '2026-04-12', 1, 450.00);
INSERT INTO sales_transaction VALUES (423, 101, 5003, 15, 10, '2026-04-12', 1, 4500.00);
INSERT INTO sales_transaction VALUES (424, 103, 5004, 10, 1, '2026-04-12', 1, 8500.00);
INSERT INTO sales_transaction VALUES (425, 107, 5005, 15, 10, '2026-04-13', 1, 950.00);
INSERT INTO sales_transaction VALUES (426, 110, 5006, 10, 1, '2026-04-13', 1, 9500.00);
INSERT INTO sales_transaction VALUES (427, 102, 5007, 15, 10, '2026-04-13', 1, 1200.00);
INSERT INTO sales_transaction VALUES (428, 104, 5008, 10, 1, '2026-04-14', 1, 800.00);
INSERT INTO sales_transaction VALUES (429, 106, 5009, 15, 10, '2026-04-14', 1, 1500.00);
INSERT INTO sales_transaction VALUES (430, 105, 5010, 10, 1, '2026-04-14', 1, 3200.00);
INSERT INTO sales_transaction VALUES (431, 109, 5011, 15, 10, '2026-04-15', 1, 450.00);
INSERT INTO sales_transaction VALUES (432, 101, 5012, 10, 1, '2026-04-15', 1, 4500.00);
INSERT INTO sales_transaction VALUES (433, 103, 5013, 15, 10, '2026-04-15', 1, 8500.00);
INSERT INTO sales_transaction VALUES (434, 107, 5014, 10, 1, '2026-04-15', 1, 950.00);
INSERT INTO sales_transaction VALUES (435, 110, 5015, 15, 10, '2026-04-16', 1, 9500.00);
INSERT INTO sales_transaction VALUES (436, 102, 5016, 10, 1, '2026-04-16', 1, 1200.00);
INSERT INTO sales_transaction VALUES (437, 104, 5017, 15, 10, '2026-04-16', 1, 800.00);
INSERT INTO sales_transaction VALUES (438, 106, 5018, 10, 1, '2026-04-16', 1, 1500.00);
INSERT INTO sales_transaction VALUES (439, 105, 5019, 15, 10, '2026-04-17', 1, 3200.00);
INSERT INTO sales_transaction VALUES (440, 109, 5020, 10, 1, '2026-04-17', 1, 450.00);
INSERT INTO sales_transaction VALUES (441, 101, 5021, 15, 10, '2026-04-17', 1, 4500.00);
INSERT INTO sales_transaction VALUES (442, 103, 5022, 10, 1, '2026-04-17', 1, 8500.00);
INSERT INTO sales_transaction VALUES (443, 107, 5023, 15, 10, '2026-04-18', 1, 950.00);
INSERT INTO sales_transaction VALUES (444, 110, 5024, 10, 1, '2026-04-18', 1, 9500.00);
INSERT INTO sales_transaction VALUES (445, 102, 5025, 15, 10, '2026-04-18', 1, 1200.00);
INSERT INTO sales_transaction VALUES (446, 104, 5026, 10, 1, '2026-04-18', 1, 800.00);
INSERT INTO sales_transaction VALUES (447, 106, 5027, 15, 10, '2026-04-19', 1, 1500.00);
INSERT INTO sales_transaction VALUES (448, 105, 5028, 10, 1, '2026-04-19', 1, 3200.00);
INSERT INTO sales_transaction VALUES (449, 109, 5029, 15, 10, '2026-04-19', 1, 450.00);
INSERT INTO sales_transaction VALUES (450, 101, 5030, 10, 1, '2026-04-19', 1, 4500.00);
INSERT INTO sales_transaction VALUES (451, 103, 5031, 15, 10, '2026-04-20', 1, 8500.00);
INSERT INTO sales_transaction VALUES (452, 107, 5032, 10, 1, '2026-04-20', 1, 950.00);
INSERT INTO sales_transaction VALUES (453, 110, 5033, 15, 10, '2026-04-20', 1, 9500.00);
INSERT INTO sales_transaction VALUES (454, 102, 5034, 10, 1, '2026-04-20', 1, 1200.00);
INSERT INTO sales_transaction VALUES (455, 104, 5035, 15, 10, '2026-04-21', 1, 800.00);
INSERT INTO sales_transaction VALUES (456, 106, 5036, 10, 1, '2026-04-21', 1, 1500.00);
INSERT INTO sales_transaction VALUES (457, 105, 5037, 15, 10, '2026-04-21', 1, 3200.00);
INSERT INTO sales_transaction VALUES (458, 109, 5038, 10, 1, '2026-04-21', 1, 450.00);
INSERT INTO sales_transaction VALUES (459, 101, 5039, 15, 10, '2026-04-22', 1, 4500.00);
INSERT INTO sales_transaction VALUES (460, 103, 5040, 10, 1, '2026-04-22', 1, 8500.00);
INSERT INTO sales_transaction VALUES (461, 107, 5041, 15, 10, '2026-04-22', 1, 950.00);
INSERT INTO sales_transaction VALUES (462, 110, 5042, 10, 1, '2026-04-22', 1, 9500.00);
INSERT INTO sales_transaction VALUES (463, 102, 5043, 15, 10, '2026-04-23', 1, 1200.00);
INSERT INTO sales_transaction VALUES (464, 104, 5044, 10, 1, '2026-04-23', 1, 800.00);
INSERT INTO sales_transaction VALUES (465, 106, 5045, 15, 10, '2026-04-23', 1, 1500.00);
INSERT INTO sales_transaction VALUES (466, 105, 5046, 10, 1, '2026-04-23', 1, 3200.00);
INSERT INTO sales_transaction VALUES (467, 109, 5047, 15, 10, '2026-04-24', 1, 450.00);
INSERT INTO sales_transaction VALUES (468, 101, 5048, 10, 1, '2026-04-24', 1, 4500.00);
INSERT INTO sales_transaction VALUES (469, 103, 5049, 15, 10, '2026-04-24', 1, 8500.00);
INSERT INTO sales_transaction VALUES (470, 107, 5050, 10, 1, '2026-04-24', 1, 950.00);
INSERT INTO sales_transaction VALUES (471, 110, 5001, 15, 10, '2026-04-25', 1, 9500.00);
INSERT INTO sales_transaction VALUES (472, 102, 5002, 10, 1, '2026-04-25', 1, 1200.00);
INSERT INTO sales_transaction VALUES (473, 104, 5003, 15, 10, '2026-04-25', 1, 800.00);
INSERT INTO sales_transaction VALUES (474, 106, 5004, 10, 1, '2026-04-25', 1, 1500.00);
INSERT INTO sales_transaction VALUES (475, 105, 5005, 15, 10, '2026-04-26', 1, 3200.00);
INSERT INTO sales_transaction VALUES (476, 109, 5006, 10, 1, '2026-04-26', 1, 450.00);
INSERT INTO sales_transaction VALUES (477, 101, 5007, 15, 10, '2026-04-26', 1, 4500.00);
INSERT INTO sales_transaction VALUES (478, 103, 5008, 10, 1, '2026-04-26', 1, 8500.00);
INSERT INTO sales_transaction VALUES (479, 107, 5009, 15, 10, '2026-04-27', 1, 950.00);
INSERT INTO sales_transaction VALUES (480, 110, 5010, 10, 1, '2026-04-27', 1, 9500.00);
INSERT INTO sales_transaction VALUES (481, 102, 5011, 15, 10, '2026-04-27', 1, 1200.00);
INSERT INTO sales_transaction VALUES (482, 104, 5012, 10, 1, '2026-04-27', 1, 800.00);
INSERT INTO sales_transaction VALUES (483, 106, 5013, 15, 10, '2026-04-28', 1, 1500.00);
INSERT INTO sales_transaction VALUES (484, 105, 5014, 10, 1, '2026-04-28', 1, 3200.00);
INSERT INTO sales_transaction VALUES (485, 109, 5015, 15, 10, '2026-04-28', 1, 450.00);
INSERT INTO sales_transaction VALUES (486, 101, 5016, 10, 1, '2026-04-28', 1, 4500.00);
INSERT INTO sales_transaction VALUES (487, 103, 5017, 15, 10, '2026-04-29', 1, 8500.00);
INSERT INTO sales_transaction VALUES (488, 107, 5018, 10, 1, '2026-04-29', 1, 950.00);
INSERT INTO sales_transaction VALUES (489, 110, 5019, 15, 10, '2026-04-29', 1, 9500.00);
INSERT INTO sales_transaction VALUES (490, 102, 5020, 10, 1, '2026-04-29', 1, 1200.00);
INSERT INTO sales_transaction VALUES (491, 104, 5021, 15, 10, '2026-04-30', 1, 800.00);
INSERT INTO sales_transaction VALUES (492, 106, 5022, 10, 1, '2026-04-30', 1, 1500.00);
INSERT INTO sales_transaction VALUES (493, 105, 5023, 15, 10, '2026-04-30', 1, 3200.00);
INSERT INTO sales_transaction VALUES (494, 109, 5024, 10, 1, '2026-04-30', 1, 450.00);
INSERT INTO sales_transaction VALUES (495, 101, 5025, 15, 10, '2026-04-30', 1, 4500.00);
INSERT INTO sales_transaction VALUES (496, 103, 5026, 10, 1, '2026-04-30', 1, 8500.00);
INSERT INTO sales_transaction VALUES (497, 107, 5027, 15, 10, '2026-04-30', 1, 950.00);
INSERT INTO sales_transaction VALUES (498, 110, 5028, 10, 1, '2026-04-30', 1, 9500.00);
INSERT INTO sales_transaction VALUES (499, 102, 5029, 15, 10, '2026-04-30', 1, 1200.00);
INSERT INTO sales_transaction VALUES (500, 104, 5030, 10, 1, '2026-04-30', 1, 800.00);

SELECT * FROM sales_transaction;

-- Engagement/Retention Analysis
-- Which customer have visited our stores more tham once and what is their total contribution to our revenue?
SELECT 
customers.first_name,
customers.last_name,
COUNT(sales_transaction.sale_id) AS total_transactions,
SUM(sales_transaction.total_amount) AS lifetime_value,
ROUND(AVG(sales_transaction.total_amount),2) AS average_spend_per_visit
FROM sales_transaction
JOIN customerS ON sales_transaction.customer_id = customers.customer_id
GROUP BY customers.customer_id, customers.first_name, customers.last_name
HAVING COUNT(sales_transaction.sale_id) > 1
ORDER BY lifetime_value DESC;

-- Category or Group Contribution
-- Which jewelry product category is the primary drivers of our total company revenue, and what percentage does each of the product contribute?
SELECT 
    product_categories.category_name,
    COUNT(sales_transaction.sale_id) AS units_sold,
    SUM(sales_transaction.total_amount) AS total_category_revenue,
    ROUND((SUM(sales_transaction.total_amount) / (SELECT SUM(total_amount) FROM sales_transaction) * 100), 2) AS percentage_of_total_revenue
FROM sales_transaction 
JOIN products ON sales_transaction.product_id = products.product_id
JOIN product_categories ON products.category_id = product_categories.category_id
GROUP BY product_categories.category_name
ORDER BY total_category_revenue DESC;

-- Regional or Hierarchical Ranking
-- How do different branch location rank in terms of total sales performance, and which city is currently our most profitable product?
SELECT 
    branches.city, 
    branches.region,
    branches.branch_name,
    SUM(sales_transaction.total_amount) AS total_revenue,
    RANK() OVER (ORDER BY SUM(sales_transaction.total_amount) DESC) AS revenue_rank,
    COUNT(sales_transaction.sale_id) AS transaction_count
FROM sales_transaction 
JOIN branches ON sales_transaction.branch_id = branches.brand_id 
GROUP BY branches.brand_id, branches.city, branches.region, branches.branch_name
ORDER BY total_revenue DESC;

-- Temporal Growth or Trend Analysis
-- What is the monthly revenue trend for the first half of 2026 and how is our cumulative growth progressinf month-over-month?

SELECT 
    DATE_FORMAT(sales_transaction.sale_date, '%Y-%m') AS sales_month, 
    COUNT(sales_transaction.sale_id) AS monthly_transaction_volume,
    SUM(sales_transaction.total_amount) AS monthly_revenue,
    -- Added a rounded monthly average here too for extra detail
    ROUND(AVG(sales_transaction.total_amount), 2) AS monthly_avg_sale,
    SUM(SUM(sales_transaction.total_amount)) OVER (ORDER BY DATE_FORMAT(sales_transaction.sale_date, '%Y-%m')) AS cumulative_revenue_to_date
FROM sales_transaction
GROUP BY sales_month
ORDER BY sales_month ASC;
