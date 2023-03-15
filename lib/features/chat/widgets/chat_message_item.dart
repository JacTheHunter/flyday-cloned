import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/platform.dart';
import 'package:flyday_broker/features/chat/models/message.dart';
import 'package:flyday_broker/features/chat/widgets/chat_message_item_files.dart';
import 'package:flyday_broker/features/chat/widgets/chat_message_item_time.dart';

import 'chat_message_item_date.dart';
import 'chat_message_item_images.dart';
import 'chat_message_item_text.dart';

class ChatMessageItem extends StatelessWidget {
  final bool isOwn;
  final bool isDateRequired;
  final bool isTimeRequired;
  final Message message;
  const ChatMessageItem({
    Key? key,
    required this.isOwn,
    required this.isDateRequired,
    required this.isTimeRequired,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final limittedBoxMaxWidth = !isWebDesktop ? (context.sizeWidth - 40 - context.sizeWidth * 0.2) : 460.0;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (isDateRequired) ...[
          const SizedBox(height: 8),
          ChatMessageItemDate(date: message.createdAtLocal),
          const SizedBox(height: 5),
        ],
        Row(
          mainAxisAlignment: isOwn ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            LimitedBox(
              maxWidth: limittedBoxMaxWidth,
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: EdgeInsets.only(
                  top: isDateRequired ? 0 : 8,
                  bottom: isTimeRequired ? 0 : 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: !isOwn && !isWebDesktop ? Radius.zero : const Radius.circular(16),
                    topRight: isOwn && !isWebDesktop ? Radius.zero : const Radius.circular(16),
                    bottomLeft: !isOwn && isWebDesktop ? Radius.zero : const Radius.circular(16),
                    bottomRight: isOwn && isWebDesktop ? Radius.zero : const Radius.circular(16),
                  ),
                  color: isOwn
                      ? context.appColors.chatMessageOwnBackgroundColor
                      : context.appColors.chatMessageBackgroundColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ChatMessageItemImages(message: message),
                    ChatMessageItemFiles(
                      isOwn: isOwn,
                      message: message,
                    ),
                    ChatMessageItemText(
                      isOwn: isOwn,
                      message: message,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (isTimeRequired) ...[
          const SizedBox(height: 5),
          Row(
            children: [
              if (isOwn) const Spacer(),
              ChatMessageItemTime(time: message.createdAtLocal),
              if (!isOwn) const Spacer(),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ],
    );
  }
}
