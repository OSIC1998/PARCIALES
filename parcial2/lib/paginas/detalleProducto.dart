import 'package:flutter/material.dart';


class MostarDetalleProducto extends StatelessWidget {
  final dynamic producto;
  const MostarDetalleProducto({Key? key, this.producto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: detalles(),
    );
  }
  Widget detalles(){
    List ausiliarF=producto["grupo"];
    int grupo=0;
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ausiliarF[grupo]["img"]),
                        ),
                      ),
                    ),
                  )
                ],      
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(producto["nombre"]+"                       "),
                        Text("\$ "+producto["precio"], style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(producto["vistas"].toString()+"vistas", style: TextStyle(fontSize: 8),),
                  SizedBox(
                    height: 3,
                  ),
                  Text(producto["descripcion"]),
                ],
              ),


/////////////////////////////////////////////////////////
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: List.generate(ausiliarF.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25),
                        /*child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MostarDetalleProducto(
                                  producto: ausiliar[index],
                                ),
                                type: PageTransitionType.scale
                                )
                              );
                            },*/
                            child: Column(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(ausiliarF[index]["color"]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          //),
                        
                      );
                    })),
                  ),
                ),
/////////////////////////////
            ],
          ),
        ),
      );
  }
}
