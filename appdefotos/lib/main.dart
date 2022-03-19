import 'package:appdefotos/paginas/mostarfoto.dart';
import 'package:appdefotos/paginas/pagina_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(appFotos());
}

class appFotos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrincipalApp(),
      routes: {
        "detalles":(BuildContext context)=>mostarFotoSelecc(),
      },
    );
  }
}
