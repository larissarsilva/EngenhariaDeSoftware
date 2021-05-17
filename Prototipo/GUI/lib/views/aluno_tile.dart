import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sismonitoria/models/aluno.dart';
import 'package:sismonitoria/provider/alunos.dart';

class AlunoTile extends StatefulWidget {
  final Aluno aluno;

  const AlunoTile(this.aluno);

  @override
  _AlunoTileState createState() => _AlunoTileState();
}

class _AlunoTileState extends State<AlunoTile> {
  @override
  Widget build(BuildContext context) {
    final Alunos alunos = Provider.of(context);
    bool isChecked = true;
    return SizedBox(
      width: 30,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (isChecked) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      }),
                  Text(this.widget.aluno.nome,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                  Text(" | "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context)
                          .pushNamed('aluno_historico', arguments: widget.aluno)
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Visualizar histórico",
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 14,
                              color: Colors.pink,
                            ),
                          ),
                          TextSpan(
                            text: " ",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              DataTable(
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.blue),
                sortColumnIndex: 0,
                sortAscending: true,
                columns: [
                  DataColumn(label: Text('Periodo')),
                  DataColumn(label: Text('Média na Disciplina')),
                  DataColumn(label: Text('Situação')),
                  DataColumn(label: Text('Turno')),
                  DataColumn(label: Text('Curso')),
                  DataColumn(label: Text('E-mail')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text(this.widget.aluno.periodo)),
                    DataCell(Text('7')),
                    DataCell(Text('Aprovado por média')),
                    DataCell(Text(this.widget.aluno.turno)),
                    DataCell(Text(this.widget.aluno.curso)),
                    DataCell(Text(this.widget.aluno.email)),
                  ])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
