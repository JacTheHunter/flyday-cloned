import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppCount extends StatelessWidget {
  final int count;
  const AppCount({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.countBackgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Text(
        '$count',
        style: context.appTextTheme.countTextStyle,
      ),
    );
  }
}
