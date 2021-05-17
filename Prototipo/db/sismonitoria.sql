create database sismonitoria;
USE sismonitoria;

CREATE TABLE Professor(
    codProfessor SMALLINT PRIMARY KEY AUTO_INCREMENT,
    nomeProfessor VARCHAR (30) NOT NULL,
    emailProfessor VARCHAR(30) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR (14) NOT NULL
    );

CREATE TABLE Aluno(
    codAluno SMALLINT PRIMARY KEY AUTO_INCREMENT,
    nomeAluno VARCHAR (30) NOT NULL,
    emailAluno VARCHAR(30) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    matricula VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR (14) NOT NULL,
    isMonitor TINYINT DEFAULT 0
   );

CREATE TABLE Disciplina(
    codDisciplina SMALLINT PRIMARY KEY AUTO_INCREMENT,
    nomeDisciplina VARCHAR (30) NOT NULL,
    codProfessor SMALLINT NOT NULL,
    dia VARCHAR (10) NOT NULL,
    horaInicio TIME NOT NULL,
    horaFim TIME NOT NULL,
    FOREIGN KEY (codProfessor) REFERENCES Professor(codProfessor)
    );

CREATE TABLE Candidatura(
    codCandidatura SMALLINT PRIMARY KEY AUTO_INCREMENT,
    codAluno SMALLINT NOT NULL,
    codDisciplina SMALLINT NOT NULL,
    candidatoAprovado TINYINT,
    FOREIGN KEY (codAluno) REFERENCES Aluno(codAluno),
    FOREIGN KEY (codDisciplina) REFERENCES Disciplina(codDisciplina)
    );

CREATE TABLE Monitor(
    codMonitor SMALLINT PRIMARY KEY AUTO_INCREMENT,
    codCandidatura SMALLINT NOT NULL,
    FOREIGN KEY (codCandidatura) REFERENCES Candidatura(codCandidatura)
    );

CREATE TABLE Monitoria(
    codMonitoria SMALLINT PRIMARY KEY AUTO_INCREMENT,
    codProfessor SMALLINT NOT NULL,
    codMonitor SMALLINT NOT NULL,
    codDisciplina SMALLINT NOT NULL,
    diaMonitoria VARCHAR (10) NOT NULL,
    horaInicioMonitoria DATETIME NOT NULL,
    horaFimMonitoria DATETIME NOT NULL,
    FOREIGN KEY (codProfessor) REFERENCES Professor(codProfessor),
    FOREIGN KEY (codMonitor) REFERENCES Monitor(codMonitor),
    FOREIGN KEY (codDisciplina) REFERENCES Disciplina(codDisciplina)
    );    

CREATE TABLE Certificado(
    codCertificado SMALLINT PRIMARY KEY AUTO_INCREMENT,
    codMonitor SMALLINT NOT NULL,
    codMonitoria SMALLINT NOT NULL,
    FOREIGN KEY (codMonitor) REFERENCES Monitor(codMonitor),
    FOREIGN KEY (codMonitoria) REFERENCES Monitoria(codMonitoria)
    );