import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sismonitoria/models/aluno.dart';
import 'package:sismonitoria/data/dummy_alunos.dart';
import 'package:http/http.dart' as http;

class Alunos with ChangeNotifier {
  fetch() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response = await http.get(url);
    return response;
  }

  final Map<String, Aluno> _items = {...DUMMY_ALUNOS};

  List<Aluno> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Aluno byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Aluno aluno) {
    if (aluno == null) {
      return;
    }

//caso o usuario nao seja nulo, ele entrara no em "atualizar" ou "incluir"
    if (aluno.id != null &&
        aluno.id.trim().isNotEmpty &&
        _items.containsKey(aluno.id)) {
      _items.update(
        aluno.id,
        (_) => Aluno(
            id: aluno.id,
            nome: aluno.nome,
            email: aluno.email,
            curso: aluno.curso,
            periodo: aluno.periodo,
            turno: aluno.turno,
            historico: aluno.historico),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Aluno(
            id: id,
            nome: aluno.nome,
            email: aluno.email,
            curso: aluno.curso,
            periodo: aluno.periodo,
            turno: aluno.turno,
            historico: aluno.historico),
      );
    }

    notifyListeners();
  }

  void remove(Aluno aluno) {
    if (aluno != null && aluno.id != null) {
      _items.remove(aluno.id);
      notifyListeners();
    }
  }
}
