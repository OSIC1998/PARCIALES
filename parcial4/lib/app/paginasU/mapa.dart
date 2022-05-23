import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/BDMaps/BDMaps.dart';


Completer<GoogleMapController> _controller = Completer();
class mapa extends StatelessWidget {
  const mapa({Key? key, this.id1, this.id2}) : super(key: key);
  final dynamic id1;
  final dynamic id2;
  @override
  Widget build(BuildContext context) {
    List map=MapaUbicasion;
    List U=map[id1]["ubicasion"];
    double La=U[id2]["latitud"];
    double Lo=U[id2]["longitud"];
    Set<Marker> _markers(){
      return{
        Marker(markerId: MarkerId('newyork'),position: LatLng(La, Lo), infoWindow: InfoWindow(title: U[id2]["nombre"], snippet: map[id1]["departamento"])),
      };
    }
    final _initialCameraPosition=CameraPosition(target: LatLng(La,Lo), zoom: 17);
    return Scaffold(
      appBar: AppBar(title: Text("mapa de "+map[id1]["departamento"]),),
      backgroundColor: Color.fromARGB(255, 0, 70, 3),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 500,
              child: GoogleMap(
                initialCameraPosition: _initialCameraPosition,
                markers: _markers(),
                myLocationButtonEnabled: false,
                scrollGesturesEnabled: false,
                mapType: MapType.hybrid,
                )
              ),
          ],
        ),
      ),
    );
  }
}