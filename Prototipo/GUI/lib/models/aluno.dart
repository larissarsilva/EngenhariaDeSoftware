import 'package:flutter/material.dart';

class Aluno {
  final String id;
  final String nome;
  final String email;
  final String periodo;
  final String curso;
  final String turno;
  final List<String> historico;

  const Aluno({
    this.id,
    @required this.nome,
    @required this.email,
    @required this.periodo,
    @required this.curso,
    @required this.turno,
    @required this.historico,
  });
}
