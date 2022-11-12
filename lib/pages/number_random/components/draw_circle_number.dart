
import 'package:flutter/material.dart';

class DrawCircleNumber extends CustomPainter {
  final Color color;
  final Offset offset;
  final String number;
  final bool isCircle;
  DrawCircleNumber({
    required this.color,
    required this.offset,
    required this.number,
    required this.isCircle,
  });
  @override
  void paint(Canvas canvas, Size size) {
    var paintCircle = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1.5;

    if (isCircle) {
      canvas.drawCircle(offset, 30.0, paintCircle);
    }
    //[draw text]
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 20,
    );
    final textSpan = TextSpan(
      text: number,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: 30,
    );
    final xCenter = (size.width - textPainter.width) / 2;
    final yCenter = (size.height - textPainter.height) / 2;
    final offsetText = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offsetText);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
