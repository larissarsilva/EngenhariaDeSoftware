import 'package:flutter/material.dart';
import 'package:sismonitoria/provider/alunos.dart';
import 'package:provider/provider.dart';
import 'aluno_tile.dart';

class FinalizarAluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Alunos alunos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Finalização'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(10.0),
            width: 185.0,
            height: 110.0,
            child: Text("os candidatos selecionados foram aprovados"),
          ),
        ],
      ),
    );
  }
}
