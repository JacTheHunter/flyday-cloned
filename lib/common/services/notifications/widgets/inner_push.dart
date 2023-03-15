import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/platform.dart';

void showInnerPush(BuildContext context, {String? title, String? message, Function()? onTap}) {
  final flushbar = Flushbar(
    maxWidth: isWebDesktop ? 500 : null,
    backgroundColor: context.appColors.innerPushBackgroundColor,
    borderRadius: BorderRadius.circular(15),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    // title: title,
    // message: message,
    titleText: title != null
        ? Text(
            title,
            style: context.appTextTheme.innerPushTitleTextStyle,
          )
        : null,
    messageText: message != null
        ? Text(
            message,
            style: context.appTextTheme.innerPushContentTextStyle,
          )
        : null,
    // titleColor: context.appColors.inAppPushTextColor,
    // messageColor: context.appColors.inAppPushTextColor,
    duration: const Duration(seconds: 5),
    margin: const EdgeInsets.all(20),
    flushbarPosition: FlushbarPosition.TOP,
    onTap: (flushbar) {
      flushbar.dismiss();
      onTap?.call();
    },
  );
  flushbar.show(context);
}
