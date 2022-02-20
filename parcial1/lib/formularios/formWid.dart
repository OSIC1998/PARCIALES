import 'package:flutter/material.dart';
import 'package:parcial1/formularios/campos.dart';

class fromuser extends StatefulWidget {
  fromuser({ Key? key }) : super(key: key);

  @override
  _fromuserState createState() => _fromuserState();
}

class _fromuserState extends State<fromuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("parcial 1"),
        ),
        body: formulario());
  }
}

Widget formulario() {
  return Container(
    child: Center(
      child: Column(children: <Widget>[
        icono(),
        camposNombres(),
        camposUsuario(),
        camposCorreo(),
        camposNumero(),
        camposPass(),
        camposRPass(),

        botonAceptar(),
        botonCancelar(),
      ],
      ),

    ),
  );
}