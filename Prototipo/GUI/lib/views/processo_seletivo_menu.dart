import 'package:flutter/material.dart';
import 'package:sismonitoria/routes/app.routes.dart';

class ProcessoSeletivoMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, //??
          children: [
            InkWell(
              onTap: () => {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10.0),
                width: 185.0,
                height: 110.0,
                child: Text("Inscrições"),
              ),
            ),
            InkWell(
              onTap: () =>
                  {Navigator.of(context).pushNamed(AppRoutes.CANDIDATOS)},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10.0),
                width: 185.0,
                height: 110.0,
                child: Text("Candidatos"),
              ),
            ),
            InkWell(
              onTap: () => {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10.0),
                width: 185.0,
                height: 110.0,
                child: Text("Processos Anteriores"),
              ),
            ),
            InkWell(
              onTap: () => {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10.0),
                width: 185.0,
                height: 110.0,
                child: Text("Dúvidas Frequentes"),
              ),
            )
          ]),
    );
  }
}
