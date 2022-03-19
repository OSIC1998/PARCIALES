import 'package:appdefotos/fotos/fotos.dart';
import 'package:flutter/material.dart';

class mostarFotoSelecc extends StatefulWidget {
  
  final dynamic numero;
  const mostarFotoSelecc({Key? key, this.numero}) : super(key: key);
  @override
  State<mostarFotoSelecc> createState() => _mostarFotoSeleccState();
}

class _mostarFotoSeleccState extends State<mostarFotoSelecc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('detalles')),
      ),
      body: Container(
        child: Column(children: <Widget>[
          Text(imagenesCartgorisadas[widget.numero]["titulo"]),
          Hero(
            tag: widget.numero,
            child: ClipRRect(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: FadeInImage(
                  placeholder: AssetImage("assets/loading.gif"),
                  image: AssetImage(imagenesCartgorisadas[widget.numero]["img"]),
                  fit: BoxFit.cover,
                ),
                ),
              )
            )
        ],),
      ),
    );
  }
}