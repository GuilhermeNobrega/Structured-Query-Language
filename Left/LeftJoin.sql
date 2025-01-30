SELECT Customers.customer_id as id, first_name as name, item, max(amount)
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id, first_name
ORDER BY max(amount) DESC;
