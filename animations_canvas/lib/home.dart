import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animacio2.dart';

class iniciar extends StatefulWidget {
  @override
  State<iniciar> createState() => _iniciarState();
}
///tiempo
class _iniciarState extends State<iniciar> {
  var value=0.0;
  final speed=0.2 ;
  late Timer timer;
  void initState(){
    super.initState();
    this.timer=Timer.periodic(Duration(milliseconds: 1000~/60), (timer) { 
      if(value<=percentage){
        setState(() {
          value += speed;
        });
      }
      /*else{
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: MyPainter()));
      }*/
    });
  }

  void dispose(){
    timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        child: Container(),
        painter: RadialProgerssPainter(this.value),
      ),
    );
  }
}

const double radialSize=100.0;
const double thickness=10;
const double percentage = 100.0;
const TextStyle textStyle=TextStyle(
  color: Colors.black,
  fontSize: 50.0,
);
class RadialProgerssPainter extends CustomPainter{
  double progre;
  RadialProgerssPainter(this.progre);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPaint(Paint()..color=Colors.lightBlue.shade100);
    final c= Offset(size.width/2.0, size.height/2.0);
    final rect=Rect.fromCenter(center: c, width: radialSize, height: radialSize);
    canvas.drawRect(rect, Paint()..color=Colors.red);
    fondoCarga(c, radialSize, canvas);
    carga(canvas, rect);
    porcentaje(canvas, c, "${progre.toInt()}", textStyle, radialSize*2*0.8);
  }


//circulo estaticp
  void fondoCarga(Offset c,double radius, Canvas canvas) {
    Paint paint= Paint()
    ..strokeWidth=3.0
    ..style=PaintingStyle.stroke
    ..color=Colors.red;
    canvas.drawCircle(c, radius, paint);
  }
/// circulo que carga
  void carga(Canvas canvas, Rect rect) {
    final startAngle=-90.0*pi/180.0;
    final sweepAngle=360*this.progre/100*pi/180.0;
    final paint= Paint()
    ..color=Colors.amber.shade50
    ..strokeWidth=thickness
    ..style=PaintingStyle.stroke;
    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  Size porcentaje(Canvas canvas, Offset position, String text, TextStyle style, double maxWidth){
    final tp=measureText(text, style, maxWidth, TextAlign.center);
    tp.paint(canvas, position+Offset(-tp.width/2.0,-tp.height/2.0));
    return tp.size;
  }

  TextPainter measureText(String text, TextStyle style,double maxWidth, TextAlign alignment){
    final span=TextSpan(text: text, style: style);
    final tp=TextPainter(text: span,textAlign: alignment, textDirection: TextDirection.ltr);
    tp.layout(minWidth: 0,maxWidth: maxWidth);
    return tp;
  }



  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}