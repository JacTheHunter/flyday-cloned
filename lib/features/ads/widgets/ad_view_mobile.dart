import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/common/widgets/dashboard_appbar_leading_icon.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/utils/check_state_status.dart';
import '../../../route/app_router.gr.dart';
import '../../offers/blocs/offers_bloc/offers_bloc.dart';
import '../blocs/ads_bloc/ads_bloc.dart';
import 'ad_map.dart';
import 'ad_view_mobile_offer_item.dart';
import 'ad_view_mobile_route.dart';

class AdViewMobile extends StatelessWidget {
  const AdViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AdsBloc, AdsState>(
        builder: (context, state) {
          if (state.selectedAd == null) return const Center(child: CircularProgressIndicator());
          return Stack(
            children: [
              InfiniteListPagination(
                onMaxScrollExtent: () => context.read<OffersBloc>().add(const OffersEvent.fetch(true)),
                builder: (context, scrollController) => SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: context.appColors.adViewAdBackgroundColor,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              state.status is LoadingStatus
                                  ? const SizedBox.shrink()
                                  : AdMap(
                                      routeDetails: state.selectedAd!.routeDetails,
                                    ),
                              const Positioned(left: 16, top: 50, child: DashboardAppbarLeadingIcon()),
                              if (state.selectedAd?.brokersWhoResponsed != null &&
                                  state.selectedAd!.brokersWhoResponsed > 0)
                                Positioned(
                                  bottom: 12,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: context.appColors.adViewMobileAdBrokersAnswersCountBackgroundColor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'brokers_answered_to_this_ad'.plural(state.selectedAd!.brokersWhoResponsed),
                                          style: context.appTextTheme.adViewWebAdBrokersAnswersCountTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: context.appColors.adViewAdBackgroundColor,
                          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...state.selectedAd!.routeDetails.map(
                              (rd) => AdViewMobileRoute(routeDetail: rd),
                            ),
                          ],
                        ),
                      ),
                      BlocConsumer<OffersBloc, OffersState>(
                        listener: (context, state) {
                          checkStateStatusForError(context, state.status);
                          if (state.status is SuccessStatus) {
                            context
                                .read<AdsBloc>()
                                .add(AdsEvent.selectAd(context.read<AdsBloc>().state.selectedAd?.id ?? 0));
                          }
                        },
                        builder: (context, state) {
                          if (state.status is! LoadingStatus && state.offers.isEmpty) {
                            return Padding(
                              padding: const EdgeInsets.all(20),
                              child: Assets.images.raster.emptyFiller.image(),
                            );
                          }
                          if (state.offers.isNotEmpty) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'your_offers'.tr(),
                                    style: context.appTextTheme.adsViewMobileInnerTitle,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  ListView.builder(
                                    padding: const EdgeInsets.all(0),
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state.offers.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return AdViewMobileOfferItem(
                                        item: state.offers[index],
                                      );
                                    },
                                  ),
                                  if (state.status is LoadingStatus) const Center(child: CircularProgressIndicator()),
                                ],
                              ),
                            );
                          }
                          if (state.status is LoadingStatus) {
                            return const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          return Container();
                        },
                      ),
                      const SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
              ),
              BlocSelector<AdsBloc, AdsState, bool>(
                selector: (state) {
                  return state.selectedAd?.status != AdStatus.canceled;
                },
                builder: (context, state) {
                  if (state) {
                    return Positioned(
                      bottom: 60,
                      left: 20,
                      child: SizedBox(
                        width: context.sizeWidth - 40,
                        child: ElevatedButton(
                          child: Text('send_prices'.tr()),
                          onPressed: () {
                            final ad = context.read<AdsBloc>().state.selectedAd;
                            if (ad != null) {
                              context.router.push(OfferEditorWrapperRoute(ad: ad));
                            }
                          },
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              )
            ],
          );
        },
      ),
    );
  }
}
