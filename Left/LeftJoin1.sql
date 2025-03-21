SELECT Customers.customer_id, Customers.first_name, Customers.last_name
From Customers
LEFT JOIN Orders -- Inclui registros da tabela esquerda com registros correspondentes na direita
ON Customers.customer_id = Orders.customer_id
WHERE Customers.customer_id NOT IN (SELECT Orders.customer_id FROM Orders);

-- OU NOT IN (SELECT ...) pode dar problema se houver NULL no subquery.

SELECT Customers.customer_id, Customers.first_name, Customers.last_name
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
WHERE Orders.customer_id IS NULL; -- basicamente aqui ele seleciona usuários de Customers que não estão contidos em Orders

-- Outro possível jeito, que deu certo (Deixa item null quando não tem)

SELECT C.customer_id, C.first_name, O.item
FROM Customers C
LEFT JOIN Orders O
ON C.customer_id = O.customer_id
WHERE O.customer_id IS NULL OR O.customer_id IS NOT NULL;
-- OU 

SELECT C.customer_id, C.first_name, O.item
FROM Customers C
LEFT JOIN Orders O
ON C.customer_id = O.customer_id;



SELECT customer_id, first_name, last_name
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Orders);
