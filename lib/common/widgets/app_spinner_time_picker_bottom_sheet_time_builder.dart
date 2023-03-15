import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppSpinnerTimePickerBottomSheetTimeBuilder extends StatelessWidget {
  final void Function(int value)? onTimeChanged;
  final int value;
  final int start;
  final int end;

  const AppSpinnerTimePickerBottomSheetTimeBuilder(
      {Key? key, required this.value, this.onTimeChanged, required this.start, required this.end})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child: ScrollConfiguration(
        behavior: const MaterialScrollBehavior().copyWith(dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        }),
        child: ListWheelScrollView.useDelegate(
          onSelectedItemChanged: onTimeChanged,
          itemExtent: 40.0,
          childDelegate: ListWheelChildLoopingListDelegate(
            children: [
              for (int i = start; i < end; i++)
                AnimatedDefaultTextStyle(
                  duration: kThemeAnimationDuration,
                  style: timeTextStyle(context, i, value),
                  child: Text(
                    (end == 12 ? i + 1 : i) < 10 ? '0${end == 12 ? i + 1 : i}' : '${end == 12 ? i + 1 : i}',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle timeTextStyle(BuildContext context, int index, int value) {
    late final TextStyle textStyle;
    if (value == index) {
      textStyle = context.appTextTheme.appSpinnerTimePickerTextStyle;
    } else if (value == index + 1 || value == index - 1) {
      textStyle = context.appTextTheme.appSpinnerTimePickerTextStyle36;
    } else {
      textStyle = context.appTextTheme.appSpinnerTimePickerTextStyle12;
    }
    return textStyle;
  }
}
