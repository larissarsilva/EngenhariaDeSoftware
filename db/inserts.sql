-- ADICIONAR PROFESSORES

INSERT INTO professor (nomeProfessor, emailProfessor, senha,cpf, telefone) 
VALUES ( "Professor","prof@upe.com.br", "senha123", "01234567899","81997811720");

INSERT INTO professor (nomeProfessor, emailProfessor, senha,cpf, telefone) 
VALUES ( "Ester","Ester@upe.com.br", "senha123", "01237577899","81977811720");

INSERT INTO professor (nomeProfessor, emailProfessor, senha,cpf, telefone) 
VALUES ( "Luiz","Luiz@upe.com.br", "senha123", "01235557899","81897811720");

-- ADICIONAR ALUNOS

INSERT INTO aluno (nomeAluno,emailAluno,senha,matricula, telefone) 
VALUES ("Larissa Silva", "lrpas@ecomp.poli.br", "senha023", "11812130000","8132421680");

INSERT INTO aluno (nomeAluno,emailAluno,senha,matricula, telefone) 
VALUES ("Samuel Linkon", "samuel@ecomp.poli.br", "senha3123", "11812150000","8232421680");

INSERT INTO aluno (nomeAluno,emailAluno,senha,matricula, telefone) 
VALUES ("Pedro Oliveira", "pedro@ecomp.poli.br", "senhaa123", "21812130055","8532421680");

INSERT INTO aluno (nomeAluno,emailAluno,senha,matricula, telefone) 
VALUES ("Joao Vitor", "joaovitor@ecomp.poli.br", "senha7123", "19819130033","8732421680");

-- ADICIONAR DISCIPLINAS

INSERT INTO Disciplina ( codProfessor, nomeDisciplina ,dia, horaInicio, horaFim ) VALUES
(2, "Engenharia de Software" ,"Terça", "08:00", "08:50");

INSERT INTO Disciplina ( codProfessor, nomeDisciplina ,dia, horaInicio, horaFim ) VALUES
(3, "Eletromagnetismo" ,"Quinta", "08:50", "09:40");

INSERT INTO Disciplina ( codProfessor, nomeDisciplina ,dia, horaInicio, horaFim ) VALUES
(3, "Calculo 1" ,"Sexta", "08:50", "09:40");

-- ADICIONAR CANDIDATOS

INSERT INTO Candidatura ( codAluno, codDisciplina ) VALUES (1,2);
INSERT INTO Candidatura ( codAluno, codDisciplina ) VALUES (4,1);
INSERT INTO Candidatura ( codAluno, codDisciplina ) VALUES (2,3);

-- ADICIONAR MONITORES
INSERT INTO Monitor (codCandidatura) VALUES (1);
INSERT INTO Monitor (codCandidatura) VALUES (2);


