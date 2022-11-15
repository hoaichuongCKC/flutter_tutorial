import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tutorial/theme/color.dart';

class MainIcon {
  MainIcon._privateConstructor();

  static final MainIcon _instance = MainIcon._privateConstructor();

  static MainIcon get instance => _instance;
  final double width = 24.0;
  final double height = 24.0;
  SvgPicture get authentication =>
      SvgPicture.asset('assets/svg/authentication.svg', fit: BoxFit.contain);
  SvgPicture get user => SvgPicture.asset(
        'assets/svg/user.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get arrowLeft => SvgPicture.asset(
        'assets/svg/arrow-left.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get bag => SvgPicture.asset(
        'assets/svg/bag.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get favourite => SvgPicture.asset(
        'assets/svg/favourite.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get love => SvgPicture.asset(
        'assets/svg/love.svg',
        fit: BoxFit.contain,
        width: width,
        height: height,
        color: MainColor.instance.pinkColor,
      );
  SvgPicture get addRectangle => SvgPicture.asset(
        'assets/svg/add-rectangle.svg',
        fit: BoxFit.contain,
        color: MainColor.instance.lightColor,
      );
  SvgPicture get leftArrowDirection => SvgPicture.asset(
        'assets/svg/left-arrow-direction.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get rightArrowDirection => SvgPicture.asset(
        'assets/svg/right-arrow-direction.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get camera => SvgPicture.asset(
        'assets/svg/camera.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get edit => SvgPicture.asset(
        'assets/svg/pencil.svg',
        fit: BoxFit.contain,
        color: MainColor.instance.darkColor,
      );
  SvgPicture get search => SvgPicture.asset(
        'assets/svg/search.svg',
        fit: BoxFit.contain,
      );
  SvgPicture get cameraVideo => SvgPicture.asset(
        'assets/svg/camera-video.svg',
        fit: BoxFit.contain,
      );
}
