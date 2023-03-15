import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class CreateAccountViewIndicatorMobile extends StatelessWidget {
  final int currentStep;
  const CreateAccountViewIndicatorMobile({Key? key, required this.currentStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Stack(
        children: [
          Container(
            height: 6,
            width: context.sizeWidth - 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.appColors.progressIndicatorColor,
            ),
          ),
          AnimatedContainer(
            duration: kThemeAnimationDuration,
            height: 6,
            width: (context.sizeWidth - 80) / 3 * currentStep,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.appColors.progressIndicatorFillColor,
            ),
          ),
        ],
      ),
    );
  }
}
