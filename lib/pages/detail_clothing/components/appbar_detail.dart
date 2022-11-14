import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/common/stateless/text.dart';
import 'package:flutter_tutorial/theme/color.dart';
import 'package:flutter_tutorial/theme/icon.dart';

class AppbarDetailClothing extends StatelessWidget {
  const AppbarDetailClothing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MainIcon.instance.arrowLeft,
          const Spacer(),
          MainIcon.instance.love,
          const SizedBox(width: 15.0),
          SizedBox(
            width: 25.0,
            height: 25.0,
            child: Center(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  SizedBox(
                    height: 20.0,
                    width: 20.0,
                    child: MainIcon.instance.bag,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SizedBox(
                      height: 15.0,
                      width: 15.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: MainColor.instance.redColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Center(
                          child: TextWidget(
                            text: '3',
                            fontSize: 11.0,
                            fontWeight: FontWeight.w500,
                            color: MainColor.instance.lightColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
