// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user_chat.dart';
import 'package:flutter_tutorial/pages/messenger/widgets/item_user_online.dart';

List<UserChatModel> list = const [
  UserChatModel(
    name: 'Me',
    avatar: 'assets/messenger_chat/me.jpg',
    timeOff: 0,
    content: '',
    isOnline: true,
    isStory: false,
    timeChat: 'Now',
  ),
  UserChatModel(
    name: 'IJin',
    avatar: 'assets/messenger_chat/user1.jpg',
    timeOff: 0,
    content: 'Hello guy!!!',
    isOnline: true,
    isStory: true,
    timeChat: '12m',
  ),
  UserChatModel(
    name: 'Jack Hamma',
    avatar: 'assets/messenger_chat/user2.jpg',
    timeOff: 6,
    content: 'Hello guy!!!',
    isOnline: false,
    isStory: false,
    timeChat: '1m',
  ),
  UserChatModel(
    name: 'Uzi',
    avatar: 'assets/messenger_chat/user3.jpg',
    timeOff: 0,
    isOnline: true,
    isStory: false,
    content: 'Hello guy!!!',
    timeChat: '5m',
  ),
  UserChatModel(
    name: 'Kyo Genius',
    avatar: 'assets/messenger_chat/user4.jpg',
    timeOff: 0,
    content: 'Hello guy!!!',
    isOnline: true,
    isStory: false,
    timeChat: 'Now',
  ),
  UserChatModel(
    name: 'Maria',
    content: 'Hello guy!!!',
    avatar: 'assets/messenger_chat/user5.jpg',
    timeOff: 7,
    isOnline: false,
    isStory: false,
    timeChat: 'Now',
  ),
  UserChatModel(
    name: 'UI/UX Boy',
    avatar: 'assets/messenger_chat/user6.jpg',
    timeOff: 7,
    isOnline: false,
    content: 'Hello guy!!!',
    isStory: false,
    timeChat: '30m',
  ),
  UserChatModel(
    name: 'Lisa',
    content: 'Hello guy!!!',
    avatar: 'assets/messenger_chat/user7.jpg',
    timeOff: 0,
    isOnline: true,
    isStory: true,
    timeChat: '1hour',
  ),
];

class ListUserOnline extends StatelessWidget {
  const ListUserOnline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: ListView.builder(
        physics: const ScrollPhysics(),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
              left: 20.0, right: index == list.length - 1 ? 20.0 : 0.0),
          child: ItemUserOnline(
            list: list[index],
          ),
        ),
      ),
    );
  }
}
