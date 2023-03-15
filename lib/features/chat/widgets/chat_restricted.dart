import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

class ChatRestricted extends StatelessWidget {
  const ChatRestricted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      color: context.appColors.chatPageRestrictBackgroundColor,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.vector.alert.svg(),
            const SizedBox(
              width: 10,
            ),
            Text(
              'you_cannot_send_message'.tr(),
              style: context.appTextTheme.chatRestrictedTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
