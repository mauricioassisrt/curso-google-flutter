//Atributos
class Tarefa {
  String nome;
  DateTime data;
  bool concluida;

  //construct

  Tarefa(String nome) {
    //this utiliza-se para referenciar algum atributo da classe
    this.nome = nome;
    //metodo que retonra data atual
    data = DateTime.now();
    concluida = false;
  }
}
