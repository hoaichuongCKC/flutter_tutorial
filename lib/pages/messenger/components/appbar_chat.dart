import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/stateless/text.dart';
import 'package:flutter_tutorial/pages/messenger/widgets/circle_icon.dart';
import 'package:flutter_tutorial/theme/color.dart';
import 'package:flutter_tutorial/theme/icon.dart';

class AppbarChat extends StatelessWidget {
  const AppbarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: MainColor.instance.lightColor,
                  backgroundImage: const AssetImage(
                    'assets/messenger_chat/me.jpg',
                  ),
                ),
                const SizedBox(width: 10.0),
                TextWidget(
                  text: 'The chat',
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600,
                  color: MainColor.instance.darkColor,
                ),
                const Spacer(),
                Row(
                  children: [
                    CircleIcon(urlIcon: MainIcon.instance.camera),
                    const SizedBox(width: 10.0),
                    CircleIcon(urlIcon: MainIcon.instance.edit),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            DecoratedBox(
              decoration: BoxDecoration(
                color: MainColor.instance.greyColor.withAlpha(50),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                height: 45.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MainIcon.instance.search,
                      const SizedBox(width: 10.0),
                      TextWidget(
                        text: 'Tìm kiếm',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: MainColor.instance.darkColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
