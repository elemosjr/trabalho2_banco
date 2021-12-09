INSERT INTO Alunos (NomeAluno, IdCurso, AnoIngresso)
    VALUES
        ('Miguel Almeida', 1, 2021),
        ('Catarina Cardoso', 1, 2021),
        ('Ana Júlia de Mota', 2, 2021);

INSERT INTO Cursos (NomeCurso, IdDepto)
    VALUES
        ('Matemática', 1),
        ('Estatística', 2);

INSERT INTO Professores (NomeProf, IdDepto)
    VALUES
        ('Yuri Carvalho', 1),
        ('Giovanna Sales', 2);

INSERT INTO Departamentos (NomeDepto, IdCentro)
    VALUES
        ('Matemática', 1),
        ('Estatística', 2);
INSERT INTO Qualificacoes (IdProf, IdDisc)
    VALUES
        (1, 1),
        (1, 2),
        (1, 3),
        (2, 1),
        (2, 2),
        (2, 3);
INSERT INTO Disciplinas (NomeDisc)
    VALUES
        ('Cálculo I'),
        ('Estatística I'),
        ('Teoria dos números');
INSERT INTO Avaliacoes (IdAluno, IdAula, Nota)
    VALUES
        (1, 1, 60),
        (2, 1, 70),
        (3, 2, 45);
INSERT INTO Presenca (IdAluno, IdAula, Presenca)
    VALUES
        (1, 1, 40),
        (2, 1, 90),
        (3, 1, 80);
INSERT INTO Aulas (IdDisc, IdCurso, IdProf, Ano)
    VALUES
        (1, 1, 1, 2021),
        (2, 2, 2, 2021)
