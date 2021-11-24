CREATE TABLE alunos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR,
    curso INT,
    ano INT,
    ano_ingresso INT,
    FOREIGN KEY (curso)
        REFERENCES cursos (id)
);

CREATE TABLE avaliacoes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    aluno INT,
    materia INT,
    nota INT,
    FOREIGN KEY (aluno)
        REFERENCES alunos (id),
    FOREIGN KEY (materia)
        REFERENCES materias (id)
);

CREATE TABLE centros(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR
);

CREATE TABLE cursos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR,
    departamento INT,
    FOREIGN KEY (departamento)
        REFERENCES departamentos (id)
);

CREATE TABLE departamentos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR,
    centro INT,
    FOREIGN KEY (centro)
        REFERENCES centros (id)
);

CREATE TABLE disciplinas(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR,
    curso INT,
    ano INT,
    ano_curso INT,
    professor INT,
    FOREIGN KEY (curso)
        REFERENCES cursos (id),
    FOREIGN KEY (professor)
        REFERENCES professores (id)
);

CREATE TABLE presenca(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    aluno INT,
    materia INT,
    presenca INT,
    FOREIGN KEY (aluno)
        REFERENCES alunos (id),
    FOREIGN KEY (materia)
        REFERENCES materias (id)
);

CREATE TABLE professores(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR,
    departamento INT,
    FOREIGN KEY (departamento)
        REFERENCES departamentos (id)
);

CREATE TABLE qualificacoes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    professor INTEGER,
    disciplina INTEGER,
    FOREIGN KEY (professor)
        REFERENCES professores (id)
    FOREIGN KEY (disciplina)
        REFERENCES disciplinas (id)
);
