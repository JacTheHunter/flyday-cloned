import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppBottomSheetOption extends StatelessWidget {
  final Widget? icon;
  final bool? isSelected;
  final String? text;
  final VoidCallback onTap;
  const AppBottomSheetOption({
    Key? key,
    this.isSelected,
    required this.onTap,
    this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(
                    width: 12,
                  ),
                ],
                if (text != null)
                  Expanded(
                    child: Text(
                      text!.tr(),
                      style: isSelected ?? true
                          ? context.appTextTheme.bottomSheetOptionSelectedTextStyle
                          : context.appTextTheme.bottomSheetOptionTextStyle,
                    ),
                  ),
                if (isSelected != null)
                  AnimatedContainer(
                    duration: kThemeAnimationDuration,
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                          width: 2,
                          color: isSelected!
                              ? context.appColors.roundCheckboxActiveBorderColor
                              : context.appColors.roundCheckboxBorderColor),
                    ),
                    child: Align(
                      child: AnimatedContainer(
                        duration: kThemeAnimationDuration,
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: isSelected! ? context.appColors.roundCheckboxActiveBorderColor : null,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            const Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
