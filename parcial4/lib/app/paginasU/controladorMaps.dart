import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial4/app/BDMaps/BDMaps.dart';
import 'package:parcial4/app/paginasU/mapa.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}
int menu=0;
int seleccion=0;
List menuItem=MapaUbicasion;
List ubicasionesPM=menuItem[menu]["ubicasion"];
class _homeState extends State<home> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("localidades"),
      ),
      backgroundColor: Color.fromARGB(255, 0, 70, 3),
      body: MenuUbicasiones(),
    );
  }
  Widget ubicasiones(){
    return Center(
      child: Container(
        child: Column(
          children: List.generate(ubicasionesPM.length, (index){
            return Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
              onTap: (){
                seleccion = index;
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: mapa(id1: menu, id2: seleccion,)));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.lightGreenAccent, borderRadius: BorderRadius.circular(50),),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(ubicasionesPM[index]["nombre"], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ),
                ),
              ),
              ),
            );
          }),
        ),
      ),
    );
  }


  Widget MenuUbicasiones(){
    ubicasionesPM=menuItem[menu]["ubicasion"];
    return Container(
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: List.generate(menuItem.length, (index){
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          menu = index;
                          seleccion=0;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(menuItem[index]["departamento"], style: TextStyle(fontSize: 15, color: menu == index ? Colors.blue : Colors.grey, fontWeight: FontWeight.w600),),
                        SizedBox(
                          height: 3,
                        ),
                        menu == index
                                  ? Container(
                                      width: 50,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(5)),
                                    )
                                  : Container()
                      ]),
                    ),
                  );
                })
              ),
            ),
          ),
          ubicasiones(),
        ],
      ),
    );
  }
}