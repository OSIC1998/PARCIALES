import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedRoute(),
    );
  }
}

class AnimatedRoute extends StatefulWidget {
  @override
  _AnimatedRouteState createState() => _AnimatedRouteState();
}

class _AnimatedRouteState extends State<AnimatedRoute>
    with SingleTickerProviderStateMixin {
  double waveRadius = 0.0;
  double waveGap = 20.0;
  late Animation<double> _animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: Duration(milliseconds: 500), vsync: this);

    controller.forward();

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reset();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _animation = Tween(begin: 0.0, end: waveGap).animate(controller)
      ..addListener(() {
        setState(() {
          waveRadius = _animation.value;
        });
      });

    return Scaffold(
      body: CustomPaint(
        size: Size(double.infinity, double.infinity),
        painter: AnimatedPainter(waveRadius, waveGap),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedPainter extends CustomPainter {
  final double waveRadius, waveGap;
  var wavePaint;

  AnimatedPainter(this.waveRadius, this.waveGap) {
    wavePaint = Paint()
      ..color = Color.fromARGB(255, 113, 35, 35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..isAntiAlias = true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2.0;
    double centerY = size.height / 2.0;
    double maxRadius = hypot(centerX, centerY);

    var currentRadius = waveRadius;
    while (currentRadius < maxRadius) {
        wavePaint
        ..color = Color.fromRGBO(math.Random().nextInt(200),
        math.Random().nextInt(200), math.Random().nextInt(200), 0.4)
        ..strokeWidth = math.Random().nextDouble() * 5.0
        ;
      canvas.drawCircle(Offset(centerX, centerY), currentRadius, wavePaint);
      currentRadius += waveGap;
    }
  }

  double hypot(double x, double y) {
    return math.sqrt(x * x + y * y);
  }

  @override
  bool shouldRepaint(AnimatedPainter oldDelegate) {
    return oldDelegate.waveRadius != waveRadius;
  }
}

