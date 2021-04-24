create database sismonitoria;
USE sismonitoria;

CREATE TABLE Professor(
    codProfessor SMALLINT NOT NULL,
    nome VARCHAR (30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR (14) NOT NULL,
    PRIMARY KEY (codProfessor));


CREATE TABLE Aluno(
    codAluno SMALLINT NOT NULL,
    nome VARCHAR (30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    matricula VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR (14) NOT NULL,
    isMonitor TINYINT NOT NULL
    PRIMARY KEY (codAluno));

CREATE TABLE Disciplina(
    codDisciplina SMALLINT NOT NULL,
    codProfessor SMALLINT NOT NULL,
    PRIMARY KEY (codDisciplina),
    FOREIGN KEY (codProfessor) REFERENCES Professor(codProfessor));


CREATE TABLE horarioDisciplina(
    codHorarioDisciplina SMALLINT PRIMARY KEY AUTO_INCREMENT,
    dia VARCHAR (10) NOT NULL,
    horaInicio DATETIME NOT NULL,
    horaFim DATETIME NOT NULL
    );

CREATE TABLE Monitoria(
    codMonitoria SMALLINT NOT NULL,
    codProfessor SMALLINT NOT NULL,
    codAluno SMALLINT NOT NULL,
    codHorarioDisciplina SMALLINT NOT NULL,
    PRIMARY KEY (codMonitoria),
    FOREIGN KEY (codProfessor) REFERENCES Professor(codProfessor),
    FOREIGN KEY (codAluno) REFERENCES Aluno(codAluno),
    FOREIGN KEY (codHorarioDisciplina) REFERENCES horarioDisciplina(codHorarioDisciplina)
)    