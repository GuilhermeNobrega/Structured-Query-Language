SELECT 
    C.customer_id, 
    C.first_name, 
    C.last_name, 
    COALESCE(O.item, 'Nenhum item comprado') AS item, 
    COALESCE(O.amount, 0.00) AS amount
FROM Customers C
LEFT JOIN Orders O
ON C.customer_id = O.customer_id
ORDER BY C.customer_id ASC;
