// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      this.strokeColor});
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final Color? strokeColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        strokeColor != null
            ? Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = strokeColor!,
                ),
              )
            : const SizedBox(),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
        ),
      ],
    );
  }
}
