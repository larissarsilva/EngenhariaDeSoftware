import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sismonitoria/models/aluno.dart';
import 'package:sismonitoria/provider/alunos.dart';

class AlunoHistorico extends StatelessWidget {
  Map aluno = {};

  @override
  Widget build(BuildContext context) {
    Aluno aluno = ModalRoute.of(context).settings.arguments;

    print(aluno);

    return Column(children: [
      Text("Nome:" + aluno.nome),
      Text("Curso:" + aluno.curso),
      Text("Tipo de ingresso: vestibular"),
      Text("Data de Emissão: 13/6/10"),
      Text("Periodo atual:" + aluno.periodo),
      Text(aluno.historico[0]),
      Text(aluno.historico[1]),
      Text(aluno.historico[2]),
    ]);
  }
}
