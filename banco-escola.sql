DROP TABLE IF EXISTS matriculas;
DROP TABLE IF EXISTS disciplinas;
DROP TABLE IF EXISTS alunos;
DROP TABLE IF EXISTS professores;
DROP TABLE IF EXISTS turmas;

CREATE TABLE alunos (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento TEXT,
    cpf TEXT UNIQUE,
    email TEXT
);

CREATE TABLE professores (
    id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT,
    email TEXT
);

CREATE TABLE disciplinas (
    id_disciplina INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_disciplina TEXT NOT NULL,
    carga_horaria INTEGER,
    id_professor INTEGER,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE turmas (
    id_turma INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_turma TEXT NOT NULL,
    ano_letivo INTEGER
);

CREATE TABLE matriculas (
    id_aluno INTEGER,
    id_turma INTEGER,
    data_matricula TEXT,
    PRIMARY KEY (id_aluno, id_turma),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);
