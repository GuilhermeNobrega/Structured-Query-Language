Total de vendas por cliente
Escreva uma consulta para exibir o customer_id, o nome completo do cliente (first_name + last_name) e o valor total (SUM(amount)) das vendas feitas por cada cliente.

SELECT 
    Customers.customer_id, 
    Customers.first_name, 
    Customers.last_name, 
    SUM(Orders.amount) AS total
FROM 
    Customers
INNER JOIN 
    Orders ON Customers.customer_id = Orders.customer_id
GROUP BY 
    Customers.customer_id, Customers.first_name, Customers.last_name
ORDER BY 
    total ASC;
