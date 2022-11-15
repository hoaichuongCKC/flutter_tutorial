import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/stateless/text.dart';
import 'package:flutter_tutorial/pages/messenger/components/list_user_online.dart';
import 'package:flutter_tutorial/pages/messenger/widgets/item_user_online.dart';
import 'package:flutter_tutorial/theme/color.dart';

class ListUserChat extends StatelessWidget {
  const ListUserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final data = list[index];
        if (index == 0) {
          return const SizedBox();
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ItemUserOnline(list: data),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: data.name,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: MainColor.instance.darkColor,
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: data.content,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: MainColor.instance.greyColor,
                      ),
                      const SizedBox(width: 10.0),
                      TextWidget(
                        text: data.timeChat.toString(),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: MainColor.instance.darkColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              Icons.check_circle,
              size: 20.0,
              color: MainColor.instance.greyColor,
            ),
          ],
        );
      },
    );
  }
}
