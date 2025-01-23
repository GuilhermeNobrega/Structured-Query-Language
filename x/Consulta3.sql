--Crie um relatório com todos os clientes e o total de pedidos feitos por cada um. Exiba "0 pedidos" para os clientes que ainda não fizeram pedidos.

SELECT Customers.customer_id, first_name as nome, last_name as sobrenome, Orders.order_id,
COUNT(item)
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.order_id
GROUP BY Customers.customer_id
HAVING Customers.customer_id IN(SELECT Orders.customer_id FROM Orders);
