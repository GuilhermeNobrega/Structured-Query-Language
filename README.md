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


---


## 🔹 Exercício 3 — Subquery + Filtro

### **Enunciado:**

Liste o `first_name`, `last_name` e `country` de todos os clientes que **não fizeram nenhum pedido**.

- Pode-se usar `SUBQUERY` ou `LEFT JOIN`.

### **Resultado esperado:**
- Campos: `first_name`, `last_name`, `country`
- Somente clientes sem pedidos associados

### **Query (com subquery):**

```sql
SELECT C.first_name as name, C.last_name as sobrenome, C.country as país
FROM Customers C
LEFT JOIN Orders O
ON C.customer_id = O.customer_id
WHERE C.customer_id NOT IN(SELECT customer_id FROM Orders)

--OU

SELECT C.first_name AS name, C.last_name AS sobrenome, C.country AS país
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id
WHERE O.customer_id IS NULL;
```
---

## 🔹 Exercício 4 — JOIN + GROUP BY + MAX

### **Enunciado:**

Para **cada país**, mostre o nome completo (`first_name` + `last_name`) do **cliente que fez o pedido de maior valor**.

### **Resultado esperado:**
- Campos: `country`, `first_name`, `last_name`, `amount`

### **Query (versão simples com GROUP BY):**

```sql
SELECT C.country AS país, C.first_name AS name, C.last_name AS sobrenome, MAX(amount) as quantidade
FROM Customers C
LEFT JOIN Orders O 
ON C.customer_id = O.customer_id
GROUP BY C.country

--OU

SELECT C.country AS país, C.first_name AS name, C.last_name AS sobrenome, MAX(amount) as quantidade
FROM Customers C
LEFT JOIN Orders O 
ON C.customer_id = O.customer_id
GROUP BY C.country
HAVING O.customer_id IS NOT NULL;
```
