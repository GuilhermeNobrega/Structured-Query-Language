Clientes sem pedidos
Exiba o nome completo (first_name, last_name) dos clientes que não realizaram nenhum pedido na tabela Orders.

SELECT 
    Customers.customer_id, 
    Customers.first_name, 
    Customers.last_name
FROM 
    Customers
WHERE 
    Customers.customer_id NOT IN (
        SELECT Orders.customer_id 
        FROM Orders
    );
