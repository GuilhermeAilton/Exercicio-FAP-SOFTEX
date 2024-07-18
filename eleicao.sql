create database eleicao;
use eleicao;




CREATE TABLE Eleitores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE
    -- Outros campos relevantes, como endereço, data de nascimento, etc.
);

CREATE TABLE Candidatos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
    -- Outros campos relevantes, como partido político, número do candidato, etc.
);

CREATE TABLE Votos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_eleitor INT,
    id_candidato INT,
    FOREIGN KEY (id_eleitor) REFERENCES Eleitores(id),
    FOREIGN KEY (id_candidato) REFERENCES Candidatos(id)
);


-- Inserir eleitores fictícios
INSERT INTO Eleitores (nome, cpf) VALUES ('João da Silva', '123.456.789-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Maria Oliveira', '987.654.321-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Pedro Souza', '456.789.123-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Ana Santos', '321.654.987-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Carlos Pereira', '789.123.456-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Mariana Costa', '654.321.987-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Lucas Oliveira', '234.567.890-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Isabela Silva', '890.123.456-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Rafaela Almeida', '567.890.123-00');
INSERT INTO Eleitores (nome, cpf) VALUES ('Felipe Santos', '123.890.567-00');


INSERT INTO Candidatos (nome) VALUES ('Candidato 1');
INSERT INTO Candidatos (nome) VALUES ('Candidato 2');
INSERT INTO Candidatos (nome) VALUES ('Candidato 3');

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (1, 1);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (2, 2);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (3, 3);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (4, 1);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (5, 2);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (6, 3);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (7, 1);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (8, 2);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (9, 3);

INSERT INTO Votos (id_eleitor, id_candidato) VALUES (10, 1);



select id, nome
from Candidatos;


select id,nome,cpf
from eleitores;


select id,nome,cpf
from eleitores
where cpf LIKE '1%';







select count(*) from votos; 

select count(*) from Eleitores; 


select Candidattos.nome, count(id)
from Candidatos
INNER JOIN Votos On Candidatos.id = Votos.id_candidato;


ALTER TABLE eleitores ADD genero char(1);
select * from votos