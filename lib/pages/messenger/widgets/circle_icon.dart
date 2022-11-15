import 'package:flutter/material.dart';
import 'package:flutter_tutorial/theme/color.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key, required this.urlIcon});
  final Widget urlIcon;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: MainColor.instance.greyColor.withAlpha(50),
        shape: const CircleBorder(),
      ),
      child: SizedBox(
        width: 35.0,
        height: 35.0,
        child: Align(
          alignment: Alignment.center,
          child: urlIcon,
        ),
      ),
    );
  }
}
