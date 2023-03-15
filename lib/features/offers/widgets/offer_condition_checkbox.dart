import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:flyday_broker/features/special_conditions/models/special_condition.dart';

class OfferConditionCheclbox extends StatelessWidget {
  final SpecialCondition item;
  final bool value;
  final void Function(bool value) onPressed;
  const OfferConditionCheclbox({Key? key, required this.value, required this.onPressed, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(8),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () => onPressed(!value),
          child: Row(
            children: [
              AppImage(
                imageUrl: item.icon,
                width: 18,
                height: 18,
                color: value
                    ? context.appColors.specialConditionActiveIconColor
                    : context.appColors.specialConditionIconColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                item.name,
                style: value
                    ? context.appTextTheme.offerEditorConditionCheckboxActiveTextStyle
                    : context.appTextTheme.offerEditorConditionCheckboxTextStyle,
              ),
              const Spacer(),
              AnimatedContainer(
                duration: kThemeAnimationDuration,
                width: 24,
                height: 24,
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
            ],
          ),
        ),
        const Divider(height: 25),
      ],
    );
  }
}
