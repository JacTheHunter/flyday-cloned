import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/widgets/decorated_tab_bar.dart';
import '../blocs/aircrafts_global_bloc/aircrafts_global_bloc.dart';
import '../blocs/aircrafts_local_bloc/aircrafts_local_bloc.dart';
import 'aircraft_global_serch_results_mobile.dart';
import 'aircraft_local_serch_results_mobile.dart';
import 'aircraft_search_field.dart';

class AircraftSearchViewWeb extends StatelessWidget {
  const AircraftSearchViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AircraftsGlobalBloc>(
          create: (context) =>
              AircraftsGlobalBloc(repository: context.read())..add(const AircraftsGlobalEvent.setSearchPhrase('')),
        ),
        BlocProvider<AircraftsLocalBloc>(
          create: (context) =>
              AircraftsLocalBloc(repository: context.read())..add(const AircraftsLocalEvent.setSearchPhrase('')),
        ),
      ],
      child: Builder(builder: (context) {
        return DefaultTabController(
          length: 2,
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Column(
              children: [
                Row(
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
                DecoratedTabBar(
                  tabBar: TabBar(
                    physics: const NeverScrollableScrollPhysics(),
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
                  // height: 300,
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
        );
      }),
    );
  }
}
