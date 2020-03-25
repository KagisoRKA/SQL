-- Adminer 4.7.6 PostgreSQL dump

/* Creating database "umuzi" which has contains tables:
* Customers with COLUMNS CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country

* Employees with COLUMNS EmployeeID, FirstName, LastName, Email, JobTitle

* Orders with COLUMNS OrderId, ProductID(foreign key referenced from products), PaymentID(foreign key referenced from payments), FulfilledByEmployeeID(foreign key referenced from employees), DateRequired, DateShipped, Status

* Payments with COLUMNS CustomerId (foreign key referenced from customers), PaymentID, PaymentDate, Amount

* Products with COLUMNS ProductId, ProductName, Description, BuyPrice
*/

CREATE DATABASE "umuzi"
-- 2020-03-25 12:40:07.938785+00
