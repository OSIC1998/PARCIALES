import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:parcial1/paginas/pagina.dart';

Widget icono() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    width: 150,
    child: Image.network("https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
  );
}

Widget camposNombres() {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 10,
      ),
      Expanded(
          child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: "First Name", fillColor: Colors.white, filled: true),
        ),
      )),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Center(
            child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: "Last Name", fillColor: Colors.white, filled: true),
        )),
      ),
    ],
  );
}

Widget camposUsuario() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Username", fillColor: Colors.white, filled: true),
      ));
}

Widget camposCorreo() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "em@ail", fillColor: Colors.white, filled: true),
      ));
}

Widget camposNumero() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "TEL. Number", fillColor: Colors.white, filled: true),
      ));
}

Widget camposPass() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password", fillColor: Colors.white, filled: true),
      ));
}

Widget camposRPass() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Comfirm Password", fillColor: Colors.white, filled: true),
      ));
}

Widget botonAceptar() {
  return ElevatedButton(
    onPressed: () => {
      //Navigator.pop(context, MaterialPageRoute(builder: (context) => Pagina()))
    },
    child: Text("ok"),
  );
}

Widget botonCancelar() {
  return FlatButton(
    color: Colors.redAccent,
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    onPressed: () {},
    child: Text("Cancelar"),
  );
}