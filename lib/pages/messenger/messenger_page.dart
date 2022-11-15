import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/messenger/components/appbar_chat.dart';
import 'package:flutter_tutorial/pages/messenger/components/list_user_chat.dart';
import 'package:flutter_tutorial/pages/messenger/components/list_user_online.dart';
import 'package:flutter_tutorial/theme/icon.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: MainIcon.instance.camera, label: 'The chat'),
          BottomNavigationBarItem(
              icon: MainIcon.instance.cameraVideo, label: 'Call video'),
          BottomNavigationBarItem(icon: MainIcon.instance.bag, label: 'Group'),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppbarChat(),
          ListUserOnline(),
          SizedBox(height: 10.0),
          Expanded(
            child: ListUserChat(),
          )
        ],
      ),
    );
  }
}
