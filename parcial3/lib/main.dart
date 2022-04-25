
import 'package:flutter/material.dart';
import 'package:parcial3/pantallas/home.dart';

void main() {
  runApp(WebFlutter());
}

class WebFlutter extends StatelessWidget {
  const WebFlutter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}