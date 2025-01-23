-- Encontre os itens que custam mais de R$ 1000 e mostre o nome do cliente que os comprou

SELECT DISTINCT item, amount,first_name
FROM Orders, Customers
WHERE amount > 1000;

--OU...

SELECT Customers.customer_id, first_name as name, item as item, amount as preço
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id
WHERE amount > 1000;
