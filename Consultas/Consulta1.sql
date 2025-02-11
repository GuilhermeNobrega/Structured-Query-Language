Lista de clientes com pedidos pendentes
Crie uma consulta que liste o first_name e last_name dos clientes que possuem pelo menos um pedido com status "Pending" na tabela Shippings.

SELECT Customers.first_name, Customers.last_name, Shippings.status
FROM Customers
INNER JOIN Shippings
ON Customers.customer_id = Shippings.customer
WHERE status = 'Pending';
