import 'dart:html';
import 'dart:ui';

import 'package:appdefotos/fotos/fotos.dart';
import 'package:appdefotos/paginas/mostarfoto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class inicioapp extends StatefulWidget {
  @override
  State<inicioapp> createState() => _inicioappState();
}

class _inicioappState extends State<inicioapp> {
  int activoMenu1 = 0;
  String categoriaF="todo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: categorias(),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child:
        _fotosMuestra(),
      ),
      //: mostrarAppBar(),
    );
  }


Widget categorias(){
   return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //crossAxisAlignment: CrossAxisAlignment.start,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(categorias_fotos.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activoMenu1 = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categorias_fotos[index],
                              style: TextStyle(
                                  //color: Colors.grey,
                                  fontSize: 15,
                                  color: activoMenu1 == index
                                      ? Colors.green
                                      : Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),
        ],
      ),
   );
  }

  Widget _fotosMuestra(){
    return MasonryGridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 4,
    itemCount: imagenesCartgorisadas.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            PageTransition(
              alignment: Alignment.bottomCenter,
              child: mostarFotoSelecc(
                numero: index,
                ),
              type: PageTransitionType.scale
              )
            );
        },
        child: Hero(
          tag: index,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.black26,
              child: FadeInImage(
                placeholder: AssetImage("assets/loading.gif"),
                image: AssetImage(imagenesCartgorisadas[index]["img"]),
                fit: BoxFit.cover,
              ),
              //index: index,
              height: (index % 5 + 1) * 100,
            ),
          ),
        ),
      );
    },
  );
  }
}
