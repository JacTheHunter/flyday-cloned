import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../models/aircraft_info.dart';
import 'aircraft_search_result_item_icon_check.dart';
import 'aircraft_search_result_item_icon_delete.dart';

class AircraftSearchResultItemMobile extends StatelessWidget {
  final VoidCallback? onCheck;
  final VoidCallback? onDelete;
  final AircraftInfo item;

  const AircraftSearchResultItemMobile({Key? key, this.onCheck, this.onDelete, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 13, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.regNumber,
                      style: context.appTextTheme.aircraftSearchResultItemTitleTextStyle,
                    ),
                    Text(
                      item.name,
                      style: context.appTextTheme.aircraftSearchResultItemSubtitleTextStyle,
                    ),
                  ],
                ),
              ),
              if (onCheck != null)
                AircraftSearchResultItemIconCheck(
                  onCheck: onCheck,
                  label: kIsWeb ? 'select'.tr() : null,
                ),
              const SizedBox(
                width: 12,
              ),
              if (onDelete != null)
                AircraftSearchResultItemIconDelete(
                  onDelete: onDelete,
                  label: kIsWeb ? 'delete'.tr() : null,
                ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
