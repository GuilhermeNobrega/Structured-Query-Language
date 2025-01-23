-- Liste os clientes que possuem pedidos, mas nenhum envio foi feito para eles ainda.

SELECT Customers.customer_id,
  first_name as nome,
  last_name,
  item as item, 
  status as status
  
FROM Customers
  INNER JOIN Orders
  ON Customers.customer_id = Orders.customer_id
  INNER JOIN Shippings
  ON Customers.customer_id = Shippings.customer
WHERE status like 'P%NG';
