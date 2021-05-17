-- Listar Alunos que são candidatos

SELECT  a.codAluno, a.nomeAluno, c.codCandidatura
FROM aluno a, candidatura c
WHERE a.codAluno = c.codAluno

-- Listar Alunos que são Candidatos
SELECT c.codAluno, a.nomeAluno , c.codCandidatura
FROM candidatura c  INNER JOIN aluno a
ON 	a.codAluno = c.codAluno
GROUP BY codAluno
ORDER BY codCandidatura

-- Listar Alunos que são Monitores
SELECT  m.codMonitor, a.codAluno, a.nomeAluno
FROM candidatura c INNER JOIN monitor m INNER JOIN aluno a
ON 	m.codCandidatura = c.codCandidatura AND c.codAluno = a.codAluno
GROUP BY codMonitor

-- Listar Professor da Disciplina
SELECT p.nomeProfessor, d.nomeDisciplina
FROM professor p INNER JOIN disciplina d
ON p.codProfessor = d.codProfessor

-- Listar Candidatos das Disciplinas e seus Professores
SELECT d.nomeDisciplina, p.nomeProfessor, c.codCandidatura, a.nomeAluno
FROM professor p INNER JOIN disciplina d INNER JOIN candidatura c INNER JOIN aluno a
ON p.codProfessor = d.codProfessor AND c.codDisciplina = d.codDisciplina AND a.codAluno = c.codAluno


