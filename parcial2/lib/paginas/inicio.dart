import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2/paginas/listas.dart';

import 'detalleProducto.dart';


class iniciApp extends StatefulWidget {
  const iniciApp({ Key? key }) : super(key: key);

  @override
  State<iniciApp> createState() => _iniciAppState();
}

class _iniciAppState extends State<iniciApp> {
  int activoMenu1=0;
  List catalogo1=ItenSillas;
  List catalogo2=ItenSillas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: menu(),
      ),
      backgroundColor: Colors.white,
      body: getPaginas(),
    );
  }
  Widget menu(){
    return Icon(
      Icons.format_align_justify,
      color: Colors.black,
      size: 24.0,
    );
  }
  Widget getPaginas() {
    return IndexedStack(
      index: activoMenu1,
      children: [
        categorias(),
        categorias(),
        categorias(),
        categorias(),
        categorias(),
      ],
    );
  }

  Widget categorias(){
    if(activoMenu1==0)
    {
      catalogo1=ItenSillas;
    }
    else if(activoMenu1==1){
      catalogo1=ItenMueble;
    }
    else if(activoMenu1==2){
      catalogo1=ItenCamas;
    }
    else if(activoMenu1==3){
      catalogo1=ItenCuna;
    }
    else{
      catalogo1=ItenMesas;
    }
   return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text("Comersial SIVAR",
                style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w600),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'buscar',
                  ),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(categorias_tienda.length, (index) {
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
                              categorias_tienda[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: activoMenu1 == index
                                      ? Colors.black
                                      : Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu1 == index
                                ? Container(
                                    width: 30,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
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


/////////////////////////////////////////////////////////////////////////////////////////////////////

          SizedBox(
            height: 20,
          ),

          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: List.generate(catalogo1.length, (index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MostarDetalleProducto(
                                  producto: catalogo1[index],
                                ),
                                type: PageTransitionType.scale
                                )
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(catalogo1[index]["imgP"]),
                                      fit: BoxFit.cover
                                    ),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  catalogo1[index]["nombre"],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 180,
                                  child: Text("\$ "+
                                    catalogo1[index]["precio"],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ),
            ],
          ),

/////////////////////////////////////////////////////////////////////////////////////////////////////

          SizedBox(
            height: 20,
          ),

          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: List.generate(catalogo2.length, (index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MostarDetalleProducto(
                                  producto: catalogo2[index],
                                ),
                                type: PageTransitionType.scale
                                )
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(catalogo2[index]["imgP"]),
                                      fit: BoxFit.cover
                                    ),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  catalogo2[index]["nombre"],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 180,
                                  child: Text("\$ "+
                                    catalogo2[index]["precio"],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
   );
  }





}