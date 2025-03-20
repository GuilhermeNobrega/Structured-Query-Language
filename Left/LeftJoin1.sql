SELECT Customers.customer_id, Customers.first_name, Customers.last_name
From Customers
LEFT JOIN Orders -- Inclui registros da tabela esquerda com registros correspondentes na direita
ON Customers.customer_id = Orders.customer_id
WHERE Customers.customer_id NOT IN (SELECT Orders.customer_id FROM Orders);
