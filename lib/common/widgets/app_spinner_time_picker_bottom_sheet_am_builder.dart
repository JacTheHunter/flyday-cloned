import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class AppSpinnerTimePickerBottomSheetAMBuilder extends StatefulWidget {
  final void Function(bool value)? onAMChanged;
  final bool value;

  const AppSpinnerTimePickerBottomSheetAMBuilder({Key? key, required this.value, this.onAMChanged}) : super(key: key);

  @override
  State<AppSpinnerTimePickerBottomSheetAMBuilder> createState() => _AppSpinnerTimePickerBottomSheetAMBuilderState();
}

class _AppSpinnerTimePickerBottomSheetAMBuilderState extends State<AppSpinnerTimePickerBottomSheetAMBuilder> {
  late final FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          controller: _controller,
          onSelectedItemChanged: (val) => widget.onAMChanged?.call(val == 0 ? true : false),
          itemExtent: 40.0,
          childDelegate: ListWheelChildListDelegate(
            children: List<Widget>.generate(
              2,
              (int index) {
                final isAM = index == 0;
                late final TextStyle textStyle;
                if (widget.value == isAM) {
                  textStyle = context.appTextTheme.appSpinnerTimePickerTextStyle;
                } else {
                  textStyle = context.appTextTheme.appSpinnerTimePickerTextStyle36;
                }
                return AnimatedDefaultTextStyle(
                  duration: kThemeAnimationDuration,
                  style: textStyle,
                  child: Text(
                    isAM ? 'AM' : 'PM',
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
