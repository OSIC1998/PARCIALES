import 'package:flutter/material.dart';
import 'package:parcial2/paginas/inicio.dart';

void main() {
  runApp(parcial2());
}

class parcial2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: iniciApp(),
    );
  }
}
