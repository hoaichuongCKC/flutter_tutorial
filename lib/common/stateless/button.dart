import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.onClick,
      required this.child,
      required this.backgroundColor,
      this.widthButton = 100,
      this.heightButton = 40.0});
  final Function() onClick;
  final Widget child;
  final Color backgroundColor;
  final double widthButton;
  final double heightButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthButton,
      height: heightButton,
      child: ElevatedButton(
        onPressed: onClick,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        child: child,
      ),
    );
  }
}
