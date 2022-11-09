import 'package:flutter/animation.dart';

class MainColor {
  MainColor._privateConstructor();

  static final MainColor _instance = MainColor._privateConstructor();

  static MainColor get instance => _instance;

  Color lightColor = const Color(0xFFFFFFFF);
  Color blueColor = const Color(0xFF0984e3);
  Color greyColor = const Color(0xFFb2bec3);
  Color greyDarkColor = const Color(0xFF636e72);
  Color purpleColor = const Color(0xFF6c5ce7);
}
