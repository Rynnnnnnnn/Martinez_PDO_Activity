CREATE TABLE Products (
  Product_ID INT PRIMARY KEY,
  Product_Name VARCHAR(255),
  Category_ID INT,
  Supplier_ID INT,
  UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Suppliers (
  Supplier_ID INT PRIMARY KEY,
  Supplier_Name VARCHAR(255),
  Email VARCHAR(255),
  Contact_Info VARCHAR(20)
);

CREATE TABLE Stocks (
  Product_ID INT,
  Quantity INT,
  LastUpdated DATE
);

CREATE TABLE Orders (
  Order_ID INT PRIMARY KEY,
  Supplier_ID INT,
  OrderDate DATE
);

CREATE TABLE Sales (
  Sales_ID INT PRIMARY KEY,
  Sales_Date DATE,
  Total DECIMAL(10, 2)
);

CREATE TABLE Sales_Products (
  Sale_ID INT,
  Product_ID INT,
  QuantitySold INT
);


INSERT INTO Products (Product_ID, Product_Name, Category_ID, Supplier_ID, UnitPrice) 
VALUES
(17, 'Espresso Dark Roast', 18, 25, 747.30),
(8, 'Iced Vanilla Latte', 4, 24, 865.69),
(22, 'Hazelnut Cappuccino', 1, 24, 968.02),
(25, 'Matcha Green Tea Latte', 12, 25, 894.05),
(23, 'Caramel Macchiato', 22, 25, 930.27),
(10, 'Pumpkin Spice Latte', 13, 24, 833.81),
(24, 'Mocha Frappuccino', 18, 19, 413.22),
(16, 'Chai Tea Latte', 10, 17, 368.64),
(18, 'Americano', 20, 10, 492.46),
(26, 'Flat White', 25, 25, 221.65),
(6, 'Cold Brew Coffee', 2, 11, 937.27),
(5, 'Affogato', 25, 10, 759.28),
(27, 'Mocha', 10, 25, 493.71),
(28, 'Double Espresso', 17, 4, 593.67),
(29, 'Cinnamon Dolce Latte', 16, 19, 230.34),
(30, 'Nitro Cold Brew', 9, 2, 715.68),
(2, 'Iced Caramel Latte', 3, 24, 433.57),
(7, 'Flat White with Almond Milk', 0, 1, 856.95),
(31, 'Hot Chocolate', 5, 15, 886.08),
(12, 'Honey Oatmilk Latte', 16, 22, 564.66),
(1, 'Iced Matcha Latte', 9, 15, 642.84),
(14, 'Cortado', 0, 20, 141.19),
(32, 'Vanilla Bean Frappuccino', 14, 9, 966.27),
(11, 'Turmeric Latte', 19, 21, 792.51),
(33, 'Irish Coffee', 17, 17, 747.51);

INSERT INTO Suppliers (Supplier_ID, Supplier_Name, Email, Contact_Info) 
VALUES
(20, 'BrewMaster Supplies', 'brewmaster@smh.com.au', '621-434-5614'),
(13, 'Vanilla Bean Goods', 'vanillabean@usa.gov', '935-224-9223'),
(21, 'Cappuccino Creations', 'cappuccinocreations@theguardian.com', '905-769-0918'),
(2, 'Espresso Essentials', 'espressoessentials@prweb.com', '190-856-2530'),
(16, 'Latte Love Co.', 'lattelove@tripod.com', '888-651-0920'),
(18, 'Mocha Magic', 'mochamagic@networkadvertising.org', '582-559-6107'),
(25, 'Caramel Café Suppliers', 'caramelcafe@washingtonpost.com', '117-423-2477'),
(1, 'Beans & Brews', 'beansbrews@yolasite.com', '255-368-5213'),
(22, 'Nutty Roasters', 'nuttyroasters@histats.com', '841-588-7838'),
(17, 'Espresso Elite', 'espressoelite@bigcartel.com', '256-814-6841'),
(0, 'Unknown Supplier', 'unknown@supplier.com', '123-456-7890'),
(19, 'Specialty Brews', 'specialty@brews.com', '555-987-6543'),
(4, 'Premium Coffee Supplies', 'premium@coffeesupplies.com', '444-444-4444');


INSERT INTO Stocks (Product_ID, Quantity, LastUpdated) 
VALUES 
(8, 3, '2024-12-21'),
(23, 3, '2024-01-25'),
(4, 8, '2024-05-10'),
(11, 1, '2024-05-08'),
(20, 12, '2024-01-27'),
(10, 6, '2024-01-19'),
(1, 24, '2024-03-05'),
(19, 1, '2024-09-07'),
(23, 22, '2024-04-12'),
(24, 18, '2024-03-12'),
(9, 3, '2024-01-10'),
(16, 16, '2024-05-30'),
(10, 19, '2024-07-24'),
(6, 7, '2024-02-18'),
(17, 1, '2024-04-10'),
(12, 25, '2024-05-05'),
(19, 6, '2024-10-22'),
(23, 5, '2024-04-22'),
(18, 17, '2024-06-03'),
(25, 15, '2024-01-12'),
(25, 23, '2024-10-04'),
(14, 24, '2024-06-25'),
(4, 13, '2024-01-11'),
(3, 13, '2024-11-08'),
(24, 16, '2024-10-21');

INSERT INTO Orders (Order_ID, Supplier_ID, OrderDate)
VALUES 
(2, 6, '2024-03-26'),
(5, 22, '2024-02-25'),
(11, 9, '2024-09-25'),
(12, 17, '2024-02-05'),
(10, 11, '2024-06-09'),
(22, 17, '2024-12-24'),
(15, 1, '2024-12-10'),
(18, 11, '2024-08-03'),
(3, 24, '2024-01-18'),
(16, 1, '2024-07-21'),
(13, 6, '2024-09-18'),
(14, 10, '2024-09-14'),
(19, 3, '2024-11-10'),  
(24, 17, '2024-12-25'),
(4, 4, '2024-04-02'),
(21, 19, '2024-01-27'),
(25, 25, '2024-01-22'),
(26, 12, '2024-12-07'),  
(27, 17, '2024-11-10'),  
(28, 18, '2024-02-03'),  
(29, 22, '2024-02-28'),  
(30, 24, '2024-02-18'),  
(31, 12, '2024-08-02'), 
(32, 21, '2024-12-29'),  
(33, 6, '2024-12-16');  

INSERT INTO Sales (Sales_ID, Sales_Date, Total) 
VALUES
(2, '2024-06-27', 1443.03),
(8, '2024-02-28', 11340.64),
(12, '2024-09-10', 16295.22),
(14, '2024-12-26', 12425.09),
(1, '2024-10-19', 18766.67),
(10, '2024-10-26', 8548.53),
(6, '2024-09-01', 19808.07),
(20, '2024-10-18', 15906.69),
(11, '2024-02-20', 9321.97),
(24, '2024-08-11', 7264.88),
(23, '2024-12-25', 1618.01),
(7, '2024-08-17', 11287.01),
(19, '2024-04-06', 7758.51),
(30, '2024-04-14', 785.00),
(3, '2024-02-07', 19366.26),
(13, '2024-09-09', 1430.46),
(31, '2024-03-05', 14999.38),
(28, '2024-08-13', 3476.15),
(29, '2024-06-13', 17834.95),
(32, '2024-11-28', 3926.58),
(33, '2024-05-07', 17406.67),
(34, '2024-03-01', 15337.52),
(35, '2024-06-10', 11315.97),
(36, '2024-08-11', 16216.11),
(9, '2024-12-04', 19722.34),
(15, '2024-12-10', 18752.00),
(37, '2024-08-20', 12673.16),
(38, '2024-10-12', 15832.42),
(39, '2024-04-05', 19602.53),
(5, '2024-01-25', 7254.41);

INSERT INTO Sales_Products (Sale_ID, Product_ID, QuantitySold) 
VALUES
(23, 22, 2259),
(5, 15, 4018),
(7, 24, 4129),
(23, 21, 4755),
(18, 12, 2154),
(20, 4, 1332),
(13, 7, 995),
(16, 9, 3854),
(12, 14, 3027),
(3, 6, 165),
(5, 23, 4836),
(9, 5, 1735),
(1, 8, 2322),
(2, 20, 1425),
(24, 3, 437),
(5, 14, 4840),
(10, 4, 934),
(19, 17, 1300),
(24, 23, 3196),
(8, 9, 2761),
(20, 22, 3821),
(5, 11, 4677),
(8, 12, 1839),
(5, 12, 4553),
(23, 15, 1837);
