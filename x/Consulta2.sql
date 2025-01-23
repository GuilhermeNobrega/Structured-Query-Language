SELECT Customers.customer_id, first_name as name, last_name as sobrenome
FROM Customers
WHERE Customers.customer_id NOT IN (SELECT customer_id FROM Orders);
