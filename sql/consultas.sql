SELECT professores.nome FROM professores
    INNER JOIN qualificacoes
    ON qualificacoes.professor = professores.id
    INNER JOIN disciplinas
    ON qualificacoes.disciplina = disciplinas.id
    WHERE disciplinas.nome = 'Cálculo I';
SELECT alunos.nome FROM alunos
    INNER JOIN avaliacoes
        ON alunos.id = avaliacoes.aluno
    INNER JOIN presenca
        ON alunos.id = presenca.aluno
    WHERE presenca.presenca < 70 AND avaliacoes.nota >= 60;
