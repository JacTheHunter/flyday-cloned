import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppBottomSheet extends StatelessWidget {
  final String? title;
  final Widget? child;

  const AppBottomSheet({Key? key, this.title, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: context.appColors.bottomSheetDraggerColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                width: 34,
                height: 6,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            if (title != null) ...[
              Text(
                title!,
                style: context.appTextTheme.bottomSheetTitleTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
            if (child != null) SafeArea(child: child!),
          ],
        ),
      ),
    );
  }
}
