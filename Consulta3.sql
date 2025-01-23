-- Conte quantos pedidos cada cliente fez, exibindo o nome e o total de pedidos
SELECT Customers.customer_id as id_usuario,
  first_name as nome,
  item as item,
  amount as quant_total,
  COUNT(Orders.order_id)

FROM Customers
INNER JOIN Orders
	ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id, first_name
ORDER BY first_name ASC;
