import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class ElevatedButtonLoader extends StatelessWidget {
  final Color? color;
  const ElevatedButtonLoader({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19,
      width: 19,
      child: CircularProgressIndicator(
        color: color ?? context.appColors.elevatedButtonLoaderColor,
      ),
    );
  }
}
