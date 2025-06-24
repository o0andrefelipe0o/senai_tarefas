DROP DATABASE IF EXISTS tarefas;

CREATE DATABASE IF NOT EXISTS tarefas;
USE tarefas;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tarefas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    prazo DATE,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (nome, email, senha)
VALUES ('Irineu', 'irineu@email.com', '123');

INSERT INTO tarefas (descricao, prazo, id_usuario)
VALUES
    ('Finalizar documentação', '2025-06-30', 1),
    ('Revisar código do módulo de login', '2025-06-28', 1);
