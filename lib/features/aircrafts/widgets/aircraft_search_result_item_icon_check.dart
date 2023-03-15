import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

class AircraftSearchResultItemIconCheck extends StatelessWidget {
  final VoidCallback? onCheck;
  final String? label;

  const AircraftSearchResultItemIconCheck({Key? key, this.onCheck, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onCheck,
      icon: Assets.images.vector.checkSquare.svg(),
      label: Text(
        label ?? '',
        style: context.appTextTheme.aircraftSearchResultItemIconCheckTextStyle,
      ),
      style: TextButton.styleFrom(
        backgroundColor: context.appColors.searchPageCheckIconBackgroundColor,
        minimumSize: const Size(1, 1),
        padding: label != null ? const EdgeInsets.all(10) : const EdgeInsets.only(left: 7, top: 7, bottom: 7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
