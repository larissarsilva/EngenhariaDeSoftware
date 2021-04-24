INSERT INTO professor (
codProfessor, 
email, 
senha,
cpf, 
telefone ) 
VALUES ( 1, "prof@upe.com.br", "senha123", "01234567899","81997811720");

UPDATE Professor SET nome = "Larissa" where codProfessor = 1


INSERT INTO aluno (
codAluno,
nome,
email,
senha,
matricula,
telefone) VALUES
(1, "Larissa Silva", "lrpas@ecomp.poli.br", "senha123", "118121300000","8132421680");

INSERT INTO disciplina VALUES ( 1,1, "Engenharia de Software")

INSERT INTO horariodisciplina (dia,horaInicio,horaFim) VALUES ("Terça","08:00","08:50")
INSERT INTO horariodisciplina (dia,horaInicio,horaFim) VALUES ("Quinta","08:00","08:50")