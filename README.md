# SQL Exercises

---

## 🔹 Exercício 1 — JOIN + WHERE

### **Enunciado:**

Liste o nome completo (`first_name` e `last_name`) e o item comprado por todos os clientes que **moram no Reino Unido (UK)** e compraram **algum produto com valor acima de 1000**.

### **Resultado esperado:**
- Campos: `first_name`, `last_name`, `item`
- Filtro por país: `UK`
- Filtro por valor: `amount > 1000`

### **Query:**

```sql
SELECT C.first_name, C.last_name, O.item
FROM Customers C
INNER JOIN Orders O ON C.customer_id = O.customer_id
WHERE C.country = 'UK' AND O.amount > 1000
ORDER BY C.customer_id ASC;
```
### ✔ Observações:
- Use `=` ao invés de `IS` para comparar valores literais (`country = 'UK'`).
- `IS` é usado geralmente para `NULL`, `TRUE`, `FALSE`.
- A condição `O.amount > 1000` é essencial para limitar aos pedidos de alto valor.

---

## 🔹 Exercício 2 — JOIN + GROUP BY + HAVING

### **Enunciado:**

Mostre o `country` e o total de pedidos realizados por clientes de cada país, somente para países que realizaram mais de 1 pedido.

### **Resultado esperado:**
- Campos: `country`, `total_pedidos`
- Filtro por países com mais de um pedido

### **Query:**

```sql
SELECT C.country, COUNT(O.order_id) AS total_pedidos
FROM Customers C
INNER JOIN Orders O ON C.customer_id = O.customer_id
GROUP BY C.country
HAVING COUNT(O.order_id) > 1
ORDER BY C.country;
```
### ✔ Observações:
- GROUP BY agrupa os resultados por país.
- HAVING é utilizado após o GROUP BY para filtrar os resultados agregados (diferente do WHERE que filtra linha a linha).
- ORDER BY organiza o resultado final alfabeticamente pelo país.
