import 'package:flutter/material.dart';
import 'package:hello_word/tarefa.dart';

//classe de exculsão do projeto
void main() {
  //aqui excuta-se o sistema atráves do RUNAPP e chama o metodo da tela desejada
  runApp(new ListaTarefasApp());
}

//StatelessWidget os eventos não sao tratados como telas estaticas
class ListaTarefasApp extends StatelessWidget {
  @override
  //return widgets
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Todo list App', home: new ListaScreen());
  }
}
//list necessario para a list view atualizar campos etc
class ListaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListaScreenState();
  }
}

//METODO HOME DO APP extends state é
class ListaScreenState extends State<ListaScreen> {
  //lista de tarefas do tipo array list
  List<Tarefa> tarefas = new List<Tarefa>();
  TextEditingController controller = new TextEditingController();
  //metodo no qual adiciona uma tarefa
  void adicionaTarefa(String nome) {
    setState(() {
      tarefas.add(Tarefa(nome));
    });
    //instanciado no textfild ao excutar aqui ele limpará os campos
    controller.clear();
  }
//metodo  responsavel por exibir o item inserido na lista
  Widget getItem(Tarefa tarefa) {
    return new Row(
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
          children: <Widget>[
            Text(tarefa.nome),
            Text(tarefa.data.toIso8601String())
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //topo
      appBar: new AppBar(
        title: new Text("Lista de tarefas"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //container do text fild 
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                //controller instanciando ele passa a controlar este textfild
                controller: controller,
                onSubmitted: adicionaTarefa),
          ),
          //container da listview 
          Expanded(
            child: ListView.builder(
              //obtem o tamanho da lista 
              itemCount: tarefas.length,
              //percoro o indice e atraves do numero do indice retorno a tarefa 
              itemBuilder: (_, indice) {
                return getItem(tarefas[indice]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

//children e utilizado para uma nova widget
