import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class ChatViewWebTopBar extends StatelessWidget {
  final String chatName;
  const ChatViewWebTopBar({Key? key, required this.chatName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            chatName,
            style: context.appTextTheme.topBarChatNameTextStyle,
          ),
        ],
      ),
    );
  }
}
