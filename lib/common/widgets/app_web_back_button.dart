import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppWebBackButton extends StatelessWidget {
  const AppWebBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        context.router.pop();
      },
      icon: Icon(CupertinoIcons.chevron_back, color: context.appColors.webBackIconColor),
      label: Text(
        'back'.tr(),
        style: context.appTextTheme.webBackIconTextStyle,
      ),
    );
  }
}
