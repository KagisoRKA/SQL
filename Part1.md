								PART1: CREATING A DATABASE

---------------------------------------------creating a database---------------------------------------

> CREATE DATABASE Umuzi

------------------------creating tables, primary keys with auto-increment & foreign keys---------------

> CREATE TABLE Customers(
CustomerID serial NOT NULL PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Gender varchar,
Address varchar(200),
Phone int,
Email varchar(100),
City varchar(20),
Country varchar(50)
);

> CREATE TABLE Employees(
EmployeeID serial NOT NULL PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
JobTitle varchar(20)
);

> CREATE TABLE products(
ProductID serial NOT NULL PRIMARY KEY;
ProductName varchar(100),
Description varchar(300),
BuyPrice decimal(7,2)
);

> CREATE TABLE payments(
CustomerID int,
PaymentID serial NOT NULL PRIMARY KEY,
PaymentDate DATE,
Amount decimal(7,2),
FOREIGN KEY (Customerid) REFERENCES Customers(Customerid)
);

> CREATE TABLE Orders(
OrderID serial NOT NULL PRIMARY KEY,
ProductID int,
PaymentID int,
FulfilledByEmployeeID int,
DateRequired DATE,
DateShipped DATE,
Status varchar(20),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID),
FOREIGN KEY (FulfilledByEmployeeID) REFERENCES Employees(EmployeeID)
);

--------------------------------------Inserting records into the tables-------------------------------------

> INSERT INTO customers (firstname, lastname, gender, address, phone, email, city, country) VALUES
('John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'SouthAfrica'),
('Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa'),
('Leon', 'Glen', 'Male', '81 Everton Rd, Gillits', 0820832830, 'Leon@gmail.com', 'Durban', 'South Africa'),
('Charl', 'Muller', 'Male', '290A Dorset Ecke',	856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany'),
('Julia', 'Stein', 'Female', '2 Wernerring', 672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany');

> INSERT INTO employees (firstname, lastname, email, jobtitle) VALUES
('Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
('Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
('Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

> INSERT INTO products (productname, description, buyprice) VALUES
('Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 150.75),
('Classic Car',	'Turnable front wheels, steering function', 550.75),
('Sports car', 'Turnable front wheels, steering function', 700.60);

> INSERT INTO payments (customerid, paymentdate, amount) VALUES
(1, '2018-01-09', 150.75),
(5, '2018-03-09', 150.75),
(4, '2018-03-09', 700.60);

> INSERT INTO orders ( productid, paymentid, fulfilledbyemployeeid, daterequired, dateshipped, status) VALUES
(1, 1, 2, '2018-05-09',	NULL, 'Not shipped'),
(1, 2, 2, '2018-04-09', '2018-03-09', 'Shipped'),
(3, 3, 3, '2018-06-09', NULL, 'Not shipped');

--------------------------------------Documenting what information is stored in the database-------------------

> COMMENT ON TABLE customers IS 'This table stores customer records (customerID, First and Last Name, Gender, Address, Phone, Email, City, Country)'

> COMMENT ON TABLE employees IS 'This table stores employee records (EmployeeID, First and Last Name, Email, Job title)'

> COMMENT ON TABLE products IS 'This table stores records on products (ProductID, ProductName, ProductDescription, Price)'

> COMMENT ON TABLE orders IS 'This table stores records on orders made (OrderID, ProductID, PaymentID, FulfilledByEmployeeID, DateRequired, DateShipped, Status)'
	> COMMENT ON COLUMN productId IS 'This key is foreign referenced from Products table'
	> COMMENT ON COLUMN paymentId IS 'This key is foreign referenced from Payments table'
	> COMMENT ON COLUMN fulfilledByEmployeeId IS 'This key is foreign referenced from employees table'

> COMMENT ON TABLE payments IS 'This table stores records on payments made (CustomerID, PaymentID, PaymentDate, Amount)'
	> COMMENT ON COLUMN customerId IS 'This key is foreign referenced from customers table' 
