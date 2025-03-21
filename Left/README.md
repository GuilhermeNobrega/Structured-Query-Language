# 📌 LEFT JOIN em SQL

## 📖 O que é o LEFT JOIN?

O `LEFT JOIN` (ou *LEFT OUTER JOIN*) é uma operação em SQL utilizada para combinar registros de duas tabelas com base em uma condição especificada. Ele retorna **todos os registros da tabela da esquerda** (primeira tabela mencionada na junção) e os registros correspondentes da tabela da direita. Se não houver correspondência, os valores da tabela da direita serão `NULL`.

---

## 🔍 Como funciona?

A sintaxe básica do `LEFT JOIN` é a seguinte:

```sql
SELECT A.coluna1, A.coluna2, B.coluna3
FROM TabelaA A
LEFT JOIN TabelaB B ON A.id = B.id;
```

### 🔹 Explicação:
- `TabelaA` é a tabela da esquerda.
- `TabelaB` é a tabela da direita.
- A junção ocorre pela coluna `id` presente em ambas as tabelas.
- Todos os registros de `TabelaA` serão retornados.
- Se houver correspondência em `TabelaB`, os valores serão combinados.
- Se **não houver correspondência**, os campos de `TabelaB` ficarão como `NULL`.

---

## 🎯 Exemplo prático

### 🔹 Suponha duas tabelas:

#### `Clientes`:
| id | nome    |
|----|--------|
| 1  | Ana    |
| 2  | Bruno  |
| 3  | Carla  |

#### `Pedidos`:
| id | cliente_id | produto   |
|----|-----------|-----------|
| 1  | 1         | Notebook  |
| 2  | 2         | Celular   |

Agora, se quisermos listar todos os clientes, incluindo os que **não** fizeram pedidos, usamos `LEFT JOIN`:

```sql
SELECT Clientes.id, Clientes.nome, Pedidos.produto
FROM Clientes
LEFT JOIN Pedidos ON Clientes.id = Pedidos.cliente_id;
```

### 🔹 Resultado da consulta:
| id | nome  | produto  |
|----|-------|---------|
| 1  | Ana   | Notebook |
| 2  | Bruno | Celular  |
| 3  | Carla | NULL     |

🔹 **Observação**: Carla aparece na lista, mas como não tem pedidos, o valor de `produto` é `NULL`.

---

## 📌 Quando usar o LEFT JOIN?

✅ Quando você deseja obter **todos os registros** de uma tabela, mesmo que não existam correspondências na outra.

✅ Útil para consultas que envolvem informações opcionais, como listar clientes que podem ou não ter compras registradas.

✅ Essencial para relatórios onde a presença de dados incompletos é aceitável.

---

## 🎯 Diferença entre LEFT JOIN e INNER JOIN

| JOIN Type   | Retorna Registros Quando |
|------------|-------------------------|
| `LEFT JOIN` | Sempre inclui todos os registros da tabela da esquerda e preenche com `NULL` quando não há correspondência. |
| `INNER JOIN` | Retorna apenas os registros que têm correspondência em ambas as tabelas. |

---

## 🛠 Testando por conta própria
Se você quiser testar, pode usar um banco de dados SQL como:
- **SQLite**
- **MySQL**
- **PostgreSQL**
- **SQL Server**

Crie as tabelas e faça algumas consultas para entender o comportamento do `LEFT JOIN`! 🚀

---

🔹 **Gostou do conteúdo?** Dê um ⭐ no repositório e contribua com melhorias! 😃

