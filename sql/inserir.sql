INSERT INTO alunos (nome, curso, ano, ano_ingresso)
    VALUES
        ('Miguel Almeida', 1, 1, 2021),
        ('Catarina Cardoso', 1, 1, 2021),
        ('Ana Júlia de Mota', 2, 1, 2021);

INSERT INTO cursos (nome, departamento)
    VALUES
        ('Matemática', 1),
        ('Estatística', 2);

INSERT INTO professores (nome, departamento)
    VALUES
        ('Yuri Carvalho', 1),
        ('Giovanna Sales', 2);

INSERT INTO departamentos (nome, centro)
    VALUES
        ('Matemática', 1),
        ('Estatística', 1);

INSERT INTO qualificacoes (professor, disciplina)
    VALUES
        (1, 1),
        (1, 2),
        (1, 3),
        (2, 1),
        (2, 2),
        (2, 3);

INSERT INTO disciplinas (nome)
    VALUES
        ('Cálculo I'),
        ('Estatística I'),
        ('Teoria do números');

INSERT INTO avaliacoes (aluno, aula, nota)
    VALUES
        (1, 1, 60),
        (2, 1, 70),
        (3, 2, 45);

INSERT INTO presenca (aluno, aula, presenca)
    VALUES
        (1, 1, 40),
        (2, 1, 90),
        (3, 1, 80);

INSERT INTO aulas (disciplina, curso, professor, ano)
    VALUES
        (1, 1, 1, 2021),
        (2, 2, 2, 2021)
