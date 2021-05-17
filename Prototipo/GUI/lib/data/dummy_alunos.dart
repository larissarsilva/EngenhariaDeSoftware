import 'package:sismonitoria/models/aluno.dart';

const DUMMY_ALUNOS = {
  '1': const Aluno(
      id: '1',
      nome: 'Maria',
      email: 'mari@alunos.com.br',
      periodo: '5',
      curso: 'Engenharia de computação',
      turno: 'manhã',
      historico: [
        "Linguagem de Programação Imperativa",
        "Fisica 7",
        "Redes de computadores"
      ]),
  '2': const Aluno(
      id: '2',
      nome: 'Luiz',
      email: 'luizc.franca@hotmail.com',
      periodo: '5',
      curso: 'Engenharia de computação',
      turno: 'manhã',
      historico: [
        "Inteligência artificial",
        "Analise e Desenvolvimento de software",
        "Redes de computadores 2"
      ]),
  '3': const Aluno(
      id: '3',
      nome: 'Larissa',
      email: "larisa@gmail.com",
      periodo: '5',
      curso: 'Engenharia de computação',
      turno: 'manhã',
      historico: [
        "Linguagem de Programação Orientada a Objetos",
        "Álgebra Linear",
        "Português"
      ]),
  '4': const Aluno(
      id: '3',
      nome: 'Esther',
      email: "esther@outlook.com",
      periodo: '5',
      curso: 'Engenharia de computação',
      turno: 'manhã',
      historico: [
        "Linguagem de Programação Orientada a Objetos",
        "Álgebra Linear",
        "Francês"
      ])
};
