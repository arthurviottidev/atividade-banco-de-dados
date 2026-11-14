SELECT a.nome, c.nome_curso
FROM alunos a
INNER JOIN cursos c ON c.id = a.curso_id;

SELECT a.nome, c.nome_curso
FROM alunos a
INNER JOIN cursos c ON c.id = a.curso_id
WHERE c.nome_curso = 'Arquitetura e Urbanismo';

UPDATE alunos
SET curso_id = 2
WHERE nome = 'Apollo';

SELECT a.nome, c.nome_curso
FROM alunos a
INNER JOIN cursos c ON c.id = a.curso_id;

-- extra
SELECT c.nome_curso
FROM cursos c
LEFT JOIN alunos a ON a.curso_id = c.id
WHERE a.id IS NULL;