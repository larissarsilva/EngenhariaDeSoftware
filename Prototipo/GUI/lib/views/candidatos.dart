import 'package:flutter/material.dart';
import 'package:sismonitoria/provider/alunos.dart';
import 'package:provider/provider.dart';
import 'package:sismonitoria/routes/app.routes.dart';
import 'aluno_tile.dart';

class Candidatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Alunos alunos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Candidatos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: alunos.count,
              itemBuilder: (context, i) => AlunoTile(alunos.byIndex(i)),
            ),
          ),
          ElevatedButton(
            child: Text('Aprovar Candidatos Selecionados'),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.FINALIZAR_ALUNO);
            },
          )
        ],
      ),
    );
  }
}
