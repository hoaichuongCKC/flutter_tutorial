// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserChatModel extends Equatable {
  final String name;
  final String avatar;
  final String content;
  final bool isOnline;
  final bool isStory;
  final String timeChat;
  final int timeOff;
  const UserChatModel({
    required this.name,
    required this.avatar,
    required this.timeOff,
    required this.isOnline,
    required this.content,
    required this.isStory,
    required this.timeChat,
  });
  @override
  List<Object?> get props =>
      [isStory, name, avatar, isOnline, timeChat, timeOff, content];
}
