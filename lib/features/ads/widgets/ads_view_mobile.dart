import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/check_state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/common/widgets/menu_view.dart';

import '../../../common/widgets/app_count.dart';
import '../../../common/widgets/dashboard_appbar_leading_icon.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/ads_bloc/ads_bloc.dart';
import 'ads_view_mobile_filter_bottom_sheet.dart';
import 'ads_view_mobile_item.dart';

class AdsViewMobile extends StatelessWidget {
  const AdsViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: context.appColors.scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(24))),
        child: const MenuView(),
      ),
      appBar: AppBar(
        title: Text('ads'.tr()),
        leading: Builder(builder: (context) {
          return DashboardAppbarLeadingIcon(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              // context.read<AuthenticationBloc>().add(const AuthenticationEvent.updateAuthenticationToken());
            },
          );
        }),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        // color: context.appColors.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: context.appColors.scaffoldBackgroundColor,
              padding: const EdgeInsets.only(bottom: 5),
              child: BlocConsumer<AdsBloc, AdsState>(
                listener: (context, state) {
                  checkStateStatusForError(context, state.status);
                },
                builder: (context, state) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      textStyle: context.appTextTheme.adsViewTitleTextStyle,
                      foregroundColor: context.appColors.primaryTextColor,
                    ),
                    child: Row(
                      children: [
                        Text(
                          state.adStatus.name.tr(),
                        ),
                        if (state.adsSelectedStatusCount > 0) ...[
                          const SizedBox(
                            width: 4,
                          ),
                          AppCount(count: state.adsSelectedStatusCount),
                        ],
                        const SizedBox(
                          width: 24,
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    onPressed: () {
                      final bloc = context.read<AdsBloc>();
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => BlocProvider.value(
                          value: bloc,
                          child: AdsViewMobileFiterBottomSheet(
                            initialStatus: state.adStatus,
                          ),
                        ),
                        isScrollControlled: true,
                      );
                    },
                  );
                },
              ),
            ),
            // const SizedBox(
            //   height: 25,
            // ),
            Expanded(
              child: BlocBuilder<AdsBloc, AdsState>(
                builder: (context, state) {
                  if (state.status is! LoadingStatus && state.ads.isEmpty) {
                    return Column(
                      children: [
                        const Spacer(),
                        Assets.images.raster.noAds.image(),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('ads_not_found'.tr(), style: context.appTextTheme.noAdsTextStyle),
                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    );
                  }
                  return InfiniteListPagination(
                    onMaxScrollExtent: () => context.read<AdsBloc>().add(const AdsEvent.fetchAds(true)),
                    builder: (context, scrollController) => ListView.builder(
                      padding: const EdgeInsets.all(0),
                      itemCount: state.ads.length + 1,
                      itemBuilder: (context, index) => index == state.ads.length
                          ? state.status is LoadingStatus
                              ? const Center(child: CircularProgressIndicator())
                              : Container()
                          : AdsViewMobileItem(
                              item: state.ads[index],
                            ),
                      controller: scrollController,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
