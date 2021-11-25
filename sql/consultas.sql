SELECT professores.nome FROM professores
    INNER JOIN qualificacoes
    ON qualificacoes.professor = professores.id
    WHERE qualificacoes.disciplina IN
        (SELECT id FROM disciplinas
            WHERE nome = 'Cálculo I');
SELECT alunos.nome FROM alunos
    WHERE alunos.id IN
        (SELECT avaliacoes.aluno FROM avaliacoes
            INNER JOIN presenca
            ON avaliacoes.aluno = presenca.aluno
                WHERE nota >= 60 AND presenca < 70);
SELECT professores.nome FROM professores
    INNER JOIN qualificacoes
        ON qualificacoes.professor = professores.id
    INNER JOIN disciplinas
        ON disciplinas.id = qualificacoes.disciplina
    INNER JOIN aulas
        ON aulas.disciplina = disciplinas.id
    INNER JOIN cursos
        ON aulas.curso = cursos.id
    WHERE 
        cursos.nome = 'Estatística'
        AND
        professores.departamento IN
            (SELECT id FROM departamentos
                WHERE nome = 'Matemática');
