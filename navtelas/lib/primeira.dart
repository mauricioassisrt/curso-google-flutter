import 'package:flutter/material.dart';
import 'package:navtelas/segunda.dart';

class PrimeiraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira pagina'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SegundaPagina()));
            },
            child: Text('Ir para Segunda pagina '),
          ),
        ),
      ),
    );
  }
}
