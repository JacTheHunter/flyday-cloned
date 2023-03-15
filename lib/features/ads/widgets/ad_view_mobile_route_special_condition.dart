import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/widgets/app_image.dart';
import '../../special_conditions/models/special_condition.dart';
import '../blocs/special_condition_text_cubit/special_condition_text_cubit.dart';

class AdViewMobileRouteSpecialCondition extends StatelessWidget {
  final SpecialCondition specialCondition;
  const AdViewMobileRouteSpecialCondition({Key? key, required this.specialCondition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpecialConditionTextCubit(duration: const Duration(seconds: 5)),
      child: Builder(builder: (context) {
        return BlocBuilder<SpecialConditionTextCubit, bool>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                if (!state) {
                  context.read<SpecialConditionTextCubit>().show();
                }
              },
              child: AnimatedContainer(
                duration: const Duration(microseconds: 400),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: context.appColors.adsViewWebAdConditionBorderColor,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppImage(
                      imageUrl: specialCondition.icon,
                      height: 14,
                      width: 14,
                    ),
                    if (state) ...[
                      const SizedBox(
                        width: 5,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            specialCondition.name,
                            textStyle: context.appTextTheme.adsViewWebAdConditionsTextStyle,
                          ),
                        ],
                        totalRepeatCount: 1,
                      ),
                    ]
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
