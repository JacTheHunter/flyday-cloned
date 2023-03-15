import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class CreateAccountViewIndicatorWeb extends StatelessWidget {
  final int currentStep;
  const CreateAccountViewIndicatorWeb({Key? key, required this.currentStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 6,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.appColors.progressIndicatorColor,
            ),
          ),
          Positioned(
            left: 0,
            child: AnimatedContainer(
              duration: kThemeAnimationDuration,
              height: 6,
              width: (320 / 3) * (currentStep),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.appColors.progressIndicatorFillColor,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 1; i < 4; i++) ...[
                AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: (currentStep) >= i
                        ? context.appColors.progressIndicatorFillColor
                        : context.appColors.stepIndicatorWebFillColor,
                    border: (currentStep) < i ? Border.all(color: context.appColors.stepIndicatorWebBorderColor) : null,
                  ),
                  child: Center(
                    child: Text(
                      i.toString(),
                      style: (currentStep) >= i
                          ? context.appTextTheme.stepIndicatorActiveWebTextStyle
                          : context.appTextTheme.stepIndicatorWebTextStyle,
                    ),
                  ),
                ),
              ],
            ],
          )
        ],
      ),
    );
  }
}
