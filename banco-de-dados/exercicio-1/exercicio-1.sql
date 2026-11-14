-- tabela de cursos
CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL
);

-- tabela de alunos com fk pra cursos
CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    curso_id INTEGER NOT NULL,
    CONSTRAINT fk_alunos_cursos FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO cursos (nome_curso) VALUES
('Arquitetura e Urbanismo'),
('Nutrição'),
('Análise e Desenvolvimento de Sistemas');

INSERT INTO alunos (nome, email, curso_id) VALUES
('Arthur Viotti', 'arthurviottidev@email.com', 1),
('Maria Eduarda Martins', 'memartins@email.com', 1),
('Diana', 'diana@email.com', 2),
('Apollo', 'apollo@email.com', 1);

-- teste da fk
INSERT INTO alunos (nome, email, curso_id) VALUES
('Francisco Martins Viotti', 'franciscomv@email.com', 99);

SELECT * FROM alunos;