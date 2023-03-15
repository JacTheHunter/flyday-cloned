import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class InputButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;
  const InputButton({Key? key, this.onPressed, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36,
      height: 36,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.appColors.inputButtonBackgroundColor,
          padding: const EdgeInsets.all(0),
          elevation: 0,
        ),
        onPressed: onPressed ?? () {},
        child: child,
      ),
    );
  }
}
