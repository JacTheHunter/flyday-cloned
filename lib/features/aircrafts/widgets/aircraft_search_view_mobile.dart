import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/widgets/decorated_tab_bar.dart';
import 'aircraft_global_serch_results_mobile.dart';
import 'aircraft_local_serch_results_mobile.dart';
import 'aircraft_search_field.dart';

class AircraftSearchViewMobile extends StatelessWidget {
  const AircraftSearchViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: context.appColors.searchPageBackgroundColor,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'jet#'.tr(),
                      style: context.appTextTheme.aircraftSearchTextStyle,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const AircraftSearchField()
                  ],
                ),
              ),
              DecoratedTabBar(
                tabBar: TabBar(
                  labelStyle: context.appTextTheme.aircraftSearchTabBarTextStyle,
                  labelColor: context.appColors.searchPageLabelColor,
                  unselectedLabelColor: context.appColors.searchPageLabelUnselectedColor,
                  tabs: [
                    Tab(
                      text: 'global_search'.tr(),
                    ),
                    Tab(text: 'my_offers'.tr()),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: context.appColors.searchPageBorderColor),
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    AircraftsGlobalSearchResultsMobile(),
                    AircraftsLocalSearchResultsMobile(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
