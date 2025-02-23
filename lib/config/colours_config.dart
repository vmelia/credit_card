import 'package:flutter/material.dart';

class ColoursConfig {
  static double alpha = 0.5;
  static Color primaryWhite = Color(0xFFCADCED);

  static List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];

  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
      color: Colors.white.withValues(alpha: ColoursConfig.alpha),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30,
    ),
    BoxShadow(
      color: Colors.blue[900]!.withValues(alpha: ColoursConfig.alpha),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20,
    ),
  ];
}
