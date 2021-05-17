import 'dart:core';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sismonitoria/routes/app.routes.dart';
import 'package:sismonitoria/views/candidatos.dart';
import 'package:sismonitoria/views/comunicados.dart';
import 'package:sismonitoria/views/finalizar_aluno.dart';
import 'package:sismonitoria/views/inicio.dart';
import 'package:sismonitoria/views/minha_conta.dart';
import 'package:sismonitoria/views/aluno_historico.dart';
import 'package:sismonitoria/views/processo_seletivo_menu.dart';
import 'package:sismonitoria/provider/alunos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Alunos(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.INICIO: (_) => Inicio(),
          AppRoutes.COMUNICADOS: (_) => Comunicados(),
          AppRoutes.PROCESSO_SELETIVO_MENU: (_) => ProcessoSeletivoMenu(),
          AppRoutes.CANDIDATOS: (_) => Candidatos(),
          AppRoutes.MINHA_CONTA: (_) => MinhaConta(),
          AppRoutes.ALUNO_HISTORICO: (_) => AlunoHistorico(),
          AppRoutes.FINALIZAR_ALUNO: (_) => FinalizarAluno()
        },
        home: MyHomePage(title: 'SisMonitoria'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  Widget fragment = Text("fragment");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SisMonitoria")),
      body: fragment,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: (_currentIndex == 0 ? Colors.red : Colors.grey)),
              label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt,
                  color: (_currentIndex == 1 ? Colors.red : Colors.grey)),
              label: 'Comunicados'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined,
                  color: (_currentIndex == 2 ? Colors.red : Colors.grey)),
              label: 'Processo Seletivo'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,
                  color: (_currentIndex == 3 ? Colors.red : Colors.grey)),
              label: 'Minha conta')
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
            case 0:
              {
                setState(() {
                  fragment = Inicio();
                });
              }

              break;
            case 1:
              {
                setState(() {
                  fragment = Comunicados();
                });
              }
              break;
            case 2:
              {
                setState(() {
                  fragment = ProcessoSeletivoMenu();
                });
              }
              break;
            case 3:
              {
                setState(() {
                  fragment = MinhaConta();
                });
              }
              break;
            default:
          }
        },
      ),
    );
  }
}

class MainAxisAligment {}
