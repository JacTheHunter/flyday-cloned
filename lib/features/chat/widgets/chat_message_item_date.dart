import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/date_formaters.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class ChatMessageItemDate extends StatelessWidget {
  final DateTime date;
  const ChatMessageItemDate({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        DateFormaters.chatDate(date),
        style: context.appTextTheme.chatMessageDateTextStyle,
      ),
    );
  }
}
