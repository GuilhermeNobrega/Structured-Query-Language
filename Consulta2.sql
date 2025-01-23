-- Mostre o nome e status de envio dos clientes com entregas pendentes.
SELECT Customers.customer_id,
  first_name,
  last_name,
  status
 
FROM Customers
INNER JOIN Shippings
ON Customers.customer_id = Shippings.customer
WHERE status like 'P%NG';
