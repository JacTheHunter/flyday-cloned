import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool value) onPressed;
  final double? width;
  final double? height;
  final Widget? title;

  const AppCheckbox({
    Key? key,
    required this.value,
    required this.onPressed,
    this.width,
    this.height,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: const EdgeInsets.all(8),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () => onPressed(!value),
      child: Row(
        children: [
          AnimatedContainer(
            duration: kThemeAnimationDuration,
            width: width ?? 24,
            height: height ?? 24,
            decoration: BoxDecoration(
              color: value ? context.appColors.primaryColor : null,
              border: value ? null : Border.all(width: 2, color: context.appColors.primaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: AnimatedScale(
                scale: value ? 1 : 0,
                duration: kThemeAnimationDuration,
                child: Icon(
                  Icons.check,
                  color: context.appColors.checkboxIconColor,
                  size: 18,
                ),
              ),
            ),
          ),
          if (title != null) ...[
            const SizedBox(
              width: 8,
            ),
            title!,
          ],
        ],
      ),
    );
  }
}
