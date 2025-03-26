
CREATE DATABASE Escola;

\c Escola;

CREATE TABLE Professor (
    id_professor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Turma (
    id_turma SERIAL PRIMARY KEY,
    nome_turma VARCHAR(50),
    id_professor INT REFERENCES Professor(id_professor),
    horario VARCHAR(100)
);

CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255),
    data_nascimento DATE,
    id_turma INT REFERENCES Turma(id_turma),
    nome_responsavel VARCHAR(255),
    telefone_responsavel VARCHAR(20),
    email_responsavel VARCHAR(100),
    informacoes_adicionais TEXT
);
