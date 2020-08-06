import 'package:flutter/material.dart';
import 'package:navtelas/primeira.dart';

class SegundaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pagina'),
      ),
       body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
                 
            },
            child: Text('Voltar para a Primeira Pagina '),
          ),
        ),
      ),
     );
  }
}
