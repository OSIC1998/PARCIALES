import 'package:animations_canvas/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'animacio2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: botones(),
    );
  }
}

class botones extends StatefulWidget {
  const botones({Key? key}) : super(key: key);

  @override
  State<botones> createState() => _botonesState();
}

class _botonesState extends State<botones> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 45, 82),
      child: Center(
        
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: iniciar()));
              },
              color: Colors.lightBlue,
              child: Text('animasion 1', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: MyPainter()));
              },
              color: Colors.lightBlue,
              child: Text('animasion 2', style: TextStyle(color: Colors.white)),
            ),
          ],
          )
      ),
    );
  }
}