CREATE TABLE membros(
membro_id INT PRIMARY KEY,
nome VARCHAR(20),
cargo VARCHAR(50),
  genero char(1)
)

CREATE TABLE tarefas(
tarefa_id INT PRIMARY KEY,
descricao VARCHAR(50),
data_ini date,
data_fim date,
membro_id INT,
FOREIGN KEY (membro_id) REFERENCES
membros(membro_id)
)

INSERT into membros(membro_id, nome, cargo, genero)
VALUES(1, 'Luiz', 'Analista', 'F');



INSERT into membros(membro_id, nome, cargo, genero)
VALUES(2, 'João Silva', 'Desenvolvedor', 'M');
INSERT into membros(membro_id, nome, cargo, genero)
VALUES(3, ' Maria Santos ', 'Analista de Banco de Dados', 'F');
INSERT into membros(membro_id, nome, cargo, genero)
VALUES(4, 'Pedro Oliveira', ' Engenheiro de Software', 'M');
INSERT into membros(membro_id, nome, cargo, genero)
VALUES(5, 'Luiz Carlos', 'Engenheiro de Software', 'F');
INSERT into membros(membro_id, nome, cargo, genero)
VALUES(6, 'Ana Costas', 'Administrador de Redes', 'F');

--Tarefas

INSERT INTO tarefas(tarefa_id, descricao,data_ini, data_fim, membro_id)
VALUES (1, 'Criar a classe produto', '2024-06-19', '2024-06-19',6)
INSERT INTO tarefas(tarefa_id, descricao,data_ini, data_fim, membro_id)
VALUES (2, 'Desenvolver novo módulo de login para o sistema.', '2024-06-19', '2024-06-19',5)
INSERT INTO tarefas(tarefa_id, descricao,data_ini, data_fim, membro_id)
VALUES (3, ' Implementar melhorias na interface do usuário', '2024-06-19', '2024-06-19',4)
INSERT INTO tarefas(tarefa_id, descricao,data_ini, data_fim, membro_id)
VALUES (4, 'Testar e validar integração com API externa..', '2024-06-19', '2024-06-19',3)
INSERT INTO tarefas(tarefa_id, descricao,data_ini, data_fim, membro_id)
VALUES (5, ' Realizar manutenção preventiva nos servidores.', '2024-06-19', '2024-06-19',2)
INSERT INTO tarefas(tarefa_id, descricao,data_ini, data_fim, membro_id)
VALUES (6, ' Realizar manutenção preventiva na AWS.', '2024-06-19', '2024-06-19',1)



UPDATE membros SET genero = 'M' WHERE membro_id = 5

SELECT membro_id,nome,cargo,genero 
FROM membros
WHERE nome LIKE 'A'


SELECT *
FROM membros
WHERE cargo LIKE '%E%'


SELECT membros.nome , membros.cargo , tarefas.descricao
FROM tarefas
INNER JOIN membros ON tarefas.membro_id = membros.membro_id
ORDER BY tarefas.descricao
