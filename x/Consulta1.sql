-- 1. Liste todos os clientes, mesmo aqueles que não têm pedidos.

SELECT Customers.customer_id as id, first_name as nome, last_name as sobrenome, item as itens
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
