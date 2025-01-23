-- Liste os nomes e países dos clientes que fizeram pedidos acima de R$ 500.

SELECT Customers.customer_id as id,
  first_name as name,
  last_name as sobrenome,
  country as país,
  amount as quant

FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id
WHERE amount > 500;
