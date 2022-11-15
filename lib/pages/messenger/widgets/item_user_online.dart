import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user_chat.dart';
import 'package:flutter_tutorial/theme/color.dart';

class ItemUserOnline extends StatelessWidget {
  const ItemUserOnline({
    Key? key,
    required UserChatModel list,
  })  : _user = list,
        super(key: key);

  final UserChatModel _user;

  @override
  Widget build(BuildContext context) {
    if (_user.name == "Me") {
      return itemMe;
    }
    if (_user.isStory) {
      return itemStory;
    }
    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: MainColor.instance.lightColor,
      ),
      child: SizedBox(
        width: 60.0,
        height: 60.0,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage(
                _user.avatar,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: DecoratedBox(
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: MainColor.instance.lightColor,
                ),
                child: SizedBox(
                  width: 15.0,
                  height: 15.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: DecoratedBox(
                      decoration: ShapeDecoration(
                        shape: const CircleBorder(),
                        color: MainColor.instance.onlineColor,
                      ),
                      child: const SizedBox(
                        width: 12.0,
                        height: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get itemMe => DecoratedBox(
        decoration: BoxDecoration(
          color: MainColor.instance.greyColor.withAlpha(70),
          shape: BoxShape.circle,
        ),
        child: SizedBox(
          width: 50,
          height: 50,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.add,
              size: 20.0,
              color: MainColor.instance.darkColor,
            ),
          ),
        ),
      );
  Widget get itemStory => DecoratedBox(
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: MainColor.instance.blueColor,
        ),
        child: SizedBox(
          width: 60.0,
          height: 60.0,
          child: Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: AssetImage(
                _user.avatar,
              ),
            ),
          ),
        ),
      );
}
