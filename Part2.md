								Part2: QUERYING A DATABASE

01. SELECT * FROM customers
02. SELECT firstname FROM customers
03. SELECT firstname, lastname FROM customers WHERE customerid=1
04. UPDATE Customers SET firstname= 'Lerato', lastname= 'Mabitso'
WHERE customerid=1
05. DELETE FROM customers WHERE customerid=2
06. SELECT COUNT(DISTINCT status) FROM orders
07. SELECT MAX(amount) FROM payments
08. SELECT * FROM customers ORDER BY country
09. SELECT * FROM products WHERE buyprice>100 AND buyprice<600
10. SELECT * FROM customers WHERE country='Germany' AND city='Berlin'
11. SELECT * FROM customers WHERE city='Cape Town' OR city='Durban'
12. SELECT * FROM products WHERE buyprice>500
13. SELECT SUM(amount) FROM payments
14. SELECT COUNT(status) FROM orders WHERE status='Shipped'
15. > SELECT AVG(amount) FROM payments
    > SELECT AVE(amount*12) FROM payments
16. SELECT payments.paymentid, customers.firstname 
FROM payments 
INNER JOIN customers ON payments.customerid = customers.customerid
17. SELECT * FROM products WHERE description LIKE 'Turnable front wheels%'
