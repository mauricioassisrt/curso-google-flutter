
import 'package:flutter/material.dart';

void main(){
  //aqui excuta-se o sistema atráves do RUNAPP
  runApp(new HelloWordScreen());
}
//StatelessWidget os eventos não sao tratados como telas estaticas
class HelloWordScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
       
    return MaterialApp(
       home:Scaffold(
         appBar:AppBar(
           title: Text("Cabeçalho do App "),
         ),
         body: Center(
           child: Text("Conteudo do Body,  ")
           ),
         )
       );
  }
  
}