import 'dart:math';
import 'package:flutter/material.dart';

import '../config.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  _PieChartWidgetState createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> with SingleTickerProviderStateMixin {
  double total = 0;
  @override
  void initState() {
    super.initState();
    for (var e in category) {
      total += e['amount'];
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return LayoutBuilder(
      builder: (context, constraint) {
        return Container(
          decoration: BoxDecoration(
            color: ColoursConfig.primaryWhite,
            shape: BoxShape.circle,
            boxShadow: ColoursConfig.neumorpShadow,
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: constraint.maxWidth * 0.6,
                  child: CustomPaint(
                    foregroundPainter: PieChartCustomPainter(width: constraint.maxWidth * 0.5, categories: category),
                    child: Container(),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: constraint.maxWidth * .5,
                  decoration: BoxDecoration(
                    color: ColoursConfig.primaryWhite,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(spreadRadius: 3, blurRadius: 5, offset: Offset(3, 3), color: Colors.black38)],
                  ),
                  child: Center(
                    child: Text("£$total", style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize(22))),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class PieChartCustomPainter extends CustomPainter {
  final List categories;
  final double width;
  const PieChartCustomPainter({required this.categories, required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = width / 1.8;
    for (var f in categories) {
      total += f['amount'];
    }
    for (var i = 0; i < categories.length; i++) {
      final currentCategory = categories[i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = ColoursConfig.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
