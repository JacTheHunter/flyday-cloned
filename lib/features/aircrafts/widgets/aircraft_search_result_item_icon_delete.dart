import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

class AircraftSearchResultItemIconDelete extends StatelessWidget {
  final VoidCallback? onDelete;
  final String? label;

  const AircraftSearchResultItemIconDelete({Key? key, this.onDelete, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onDelete,
      icon: Assets.images.vector.delete.svg(),
      label: Text(
        label ?? '',
        style: context.appTextTheme.aircraftSearchResultItemIconDeleteTextStyle,
      ),
      style: TextButton.styleFrom(
        backgroundColor: context.appColors.searchPageDeleteIconBackgroundColor,
        minimumSize: const Size(1, 1),
        padding: label != null ? const EdgeInsets.all(10) : const EdgeInsets.only(left: 7, top: 7, bottom: 7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
