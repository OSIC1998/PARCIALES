import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'datosApi.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<DAPI>> _listadoApi;

  Future<List<DAPI>> _getlista() async{

    final response = await http.get(Uri.parse(
        "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a"));
    String cuerpoDatos;
    List<DAPI> lista = [];

    if (response.statusCode == 200) {
      cuerpoDatos = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(cuerpoDatos);
      for (var item in jsonData["drinks"]) {
        lista.add(DAPI(item["strCategory"], item["strDrinkThumb"], item["strAlcoholic"], item["strInstructions"]));
      }
    } else {
      throw Exception("Falla en conexion  estado 500");
    }
    return lista;
  }
  
  @override
  void initState() {
    super.initState();
    _listadoApi = _getlista();
  }



  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: _listadoApi,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            padding: const EdgeInsets.all(20),
            children: _mostrarListado(snapshot.data),
          );
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return Text("Error");
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );



    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Preparación de bebidas',
      home: Scaffold(
        backgroundColor: Colors.pink.shade900,
          appBar: AppBar(
            title: Text('bebidas'),
          ),
          body: futureBuilder),
    );
  }

  List<Widget> _mostrarListado(data) {
    List<Widget> mostrar = [];
    for (var itempk in data) {
      mostrar.add(Card(
        color: Colors.white70,
        elevation: 2.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(itempk.strDrinkThumb)),
                    ),
                  ),
                  SizedBox(
                        width: 10,
                      ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(itempk.strCategory, style: TextStyle(fontSize: 30),),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text("tipo: "+itempk.strAlcoholic, style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(
                        width: 150,
                        height: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(itempk.strInstructions),
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
    }
    return mostrar;
  }
}