import 'package:flutter/material.dart';
import 'package:parcial1/formularios/formWid.dart';

void main() {
  runApp(parcia1());
}

class parcia1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "parcial 1",
      home: fromuser(),
    );
  }
}