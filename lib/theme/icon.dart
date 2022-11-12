import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainIcon {
  MainIcon._privateConstructor();

  static final MainIcon _instance = MainIcon._privateConstructor();

  static MainIcon get instance => _instance;

  SvgPicture get authentication =>
      SvgPicture.asset('assets/authentication.svg', fit: BoxFit.contain);
  SvgPicture get user => SvgPicture.asset(
        'assets/user.svg',
        fit: BoxFit.contain,
      );
}
