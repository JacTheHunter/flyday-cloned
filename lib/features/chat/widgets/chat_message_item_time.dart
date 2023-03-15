import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/date_formaters.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class ChatMessageItemTime extends StatelessWidget {
  final DateTime time;
  const ChatMessageItemTime({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormaters.chatTime(time),
      style: context.appTextTheme.chatMessageTimeTextStyle,
    );
  }
}
