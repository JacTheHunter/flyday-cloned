import 'package:flutter/material.dart';
import 'package:flyday_broker/features/chat/models/message.dart';
import 'package:flyday_broker/features/chat/models/message_type.dart';

import 'chat_message_item_files_single.dart';

class ChatMessageItemFiles extends StatelessWidget {
  final bool isOwn;
  final Message message;
  const ChatMessageItemFiles({Key? key, required this.message, required this.isOwn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (message.messageType != MessageType.image && message.files.isNotEmpty) {
      return Column(
        children: message.files
            .map((e) => ChatMessageItemFilesSingle(
                  key: ObjectKey(e),
                  isOwn: isOwn,
                  item: e,
                ))
            .toList(),
      );
    }
    return const SizedBox.shrink();
  }
}
