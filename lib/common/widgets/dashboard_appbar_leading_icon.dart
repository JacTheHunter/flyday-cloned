import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class DashboardAppbarLeadingIcon extends StatelessWidget {
  final Widget? icon;
  final void Function()? onPressed;
  const DashboardAppbarLeadingIcon({Key? key, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 20,
      onPressed: onPressed ??
          () {
            context.router.pop();
          },
      icon: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: context.appColors.appBarIconBackgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: icon ??
            const Icon(
              Icons.arrow_back,
            ),
      ),
    );
  }
}
