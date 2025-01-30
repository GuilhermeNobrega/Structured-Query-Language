--CREATE TABLE Departamento(
--id int PRIMARY KEY,
--nome varchar(10)
--);

--INSERT INTO Departamento
--VALUES
--(5,'rh')
--(4, 'TI');

--UPDATE Departamento
--SET nome = 'RH'
--WHERE id = 5;

--UPDATE Departamento
--SET nome = 'TI'
--WHERE id = 4;

--CREATE TABLE Funcionarios(
--id int PRIMARY KEY,
----nome varchar(10) not null,
--departamento_id int,
--FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
--ON DELETE CASCADE
--);

--INSERT INTO Funcionarios
--VALUES
--(1, 'PAULO', 5)
--(2, 'Joao', 4);
DELETE FROM Departamento WHERE id = 5;
--DROP TABLE Funcionarios

