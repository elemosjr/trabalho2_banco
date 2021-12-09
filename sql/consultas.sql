SELECT Professores.IdProf, Professores.NomeProf FROM Professores
    INNER JOIN Qualificacoes
    ON Qualificacoes.IdProf = Professores.IdProf
    WHERE Qualificacoes.IdDisc IN
        (SELECT IdDisc FROM Disciplinas
            WHERE NomeDisc = 'Cálculo I');
SELECT Alunos.IdAluno, Alunos.NomeAluno FROM Alunos
    WHERE Alunos.IdAluno IN
        (SELECT Avaliacoes.IdAluno FROM Avaliacoes
            INNER JOIN Presenca
            ON Avaliacoes.IdAluno = Presenca.IdAluno
                WHERE Nota >= 60 AND Presenca < 70);
SELECT Professores.IdProf, Professores.NomeProf FROM Professores
    INNER JOIN Qualificacoes
        ON Qualificacoes.IdProf = Professores.IdProf
    INNER JOIN Disciplinas
        ON Disciplinas.IdDisc = Qualificacoes.IdDisc
    INNER JOIN Aulas
        ON Aulas.IdDisc = Disciplinas.IdDisc
    INNER JOIN Cursos
        ON Aulas.IdCurso = Cursos.IdCurso
    WHERE 
        Cursos.NomeCurso = 'Estatística'
        AND
        Professores.IdDepto IN
            (SELECT IdDepto FROM Departamentos
                WHERE NomeDepto = 'Matemática');
