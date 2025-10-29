CREATE TABLE professores(
    id int not null primary key autoincrement,
    nome text,
    emai text,
    telefone text
);

CREATE TABLE disciplinas(
    id int not null primary key autoincrement,
    nome text,
    carga_horaria int
);

CREATE TABLE turmas(
    id int not null primary key autoincrement,
    nome text,
    ano_letivo int,
    turno text
);

CREATE TABLE alunos(
    id int not null primary key autoincrement,
    nome text,
    data_nascimento text,
    email text,
    turma_id int,
    foreign key (turma_id) references turmas(id)
);

CREATE TABLE aulas(
    id int not null primary key autoincrement,
    inicio text,
    fim text,
    sala text,
    turma_id int,
    foreign key (turma_id) references turmas(id),
    disciplina_id int,
    foreign key (disciplina_id) references disciplinas(id)
    professor_id int,
    foreign key (professor_id) references professores(id)
);