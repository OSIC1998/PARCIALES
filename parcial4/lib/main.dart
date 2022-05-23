import 'package:flutter/material.dart';
import 'package:parcial4/app/paginasU/controladorMaps.dart';



void main() {
  runApp(Parcial());
}
class Parcial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mapas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: home(),
    );
  }
}
