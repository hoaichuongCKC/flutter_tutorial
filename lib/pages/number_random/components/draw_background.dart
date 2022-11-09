import 'package:flutter/material.dart';
import 'package:flutter_tutorial/theme/color.dart';

class DrawBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = MainColor.instance.blueColor
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    // [draw 18 line horizontal background]
    drawLine(canvas, paint, size);
  }

  drawLine(Canvas canvas, Paint paint, Size size) {
// [max height, max width is size phone]
    double maxHeight = size.height;
    double maxWidth = size.width;
    for (int i = 1; i <= 15; i++) {
      final dx = Offset(0, maxHeight * (i / 15).toDouble());
      final dy = Offset(maxWidth, maxHeight * (i / 15).toDouble());
      canvas.drawLine(dx, dy, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
