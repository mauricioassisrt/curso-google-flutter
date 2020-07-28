import 'package:flutter/material.dart';

void main() {
  //aqui excuta-se o sistema atráves do RUNAPP
  runApp(new ListaTarefasApp());
}

//StatelessWidget os eventos não sao tratados como telas estaticas
class ListaTarefasApp extends StatelessWidget {
  @override
  //return widgets
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ListaScreen());
  }
}

//METODO HOME DO APP
class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //topo
      appBar: new AppBar(
        title: new Text("Lista de tarefas"),
      ),
      body: Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              IconButton(
                icon: new Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
                iconSize: 50.0,
                onPressed: () {},
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Text("Lavar o carro bem lavado "), Text("13-02-2021")],
              ),
              
            ],
          ),
          new Row(
            children: <Widget>[Text("NOVA LINHA")],
          )
          
        ],
      ),
    );
  }
}
//children e utilizado para uma nova widget
