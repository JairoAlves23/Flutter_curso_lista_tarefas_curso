import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> lista = ["Android", "Android navegação", "IOS", "Jogos"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Tarefas"),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      title: Text(lista[index]),
                    );
                  }),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.purple,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Adicionar Tarefa"),
                      content: TextField(
                        decoration:
                            InputDecoration(labelText: "Digite sua tarefa"),
                        onChanged: (text) {},
                      ),
                      actions: <Widget>[
                        FlatButton(
                            child: Text("Cancelar"),
                            onPressed: () => Navigator.pop(context)),
                        FlatButton(
                          child: Text("Salvar"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            }));
  }
}
