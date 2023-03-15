import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/models/message.dart';

class ChatMessageItemText extends StatelessWidget {
  final bool isOwn;
  final Message message;
  const ChatMessageItemText({
    Key? key,
    required this.isOwn,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (message.text.isNotEmpty) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              message.text,
              style: isOwn ? context.appTextTheme.chatMessageOwnTextStyle : context.appTextTheme.chatMessageTextStyle,
            ),
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }
}
