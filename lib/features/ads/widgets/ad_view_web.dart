import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/dashboard_web_view_wrapper.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';
import 'package:flyday_broker/features/ads/widgets/ad_view_web_route_item_collapsed.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/widgets/app_image.dart';
import '../../offers/blocs/offers_bloc/offers_bloc.dart';
import '../../profile/blocs/profile_bloc/profile_bloc.dart';
import '../blocs/ads_bloc/ads_bloc.dart';
import 'ad_view_web_offer_item.dart';
import 'ad_view_web_route_item.dart';

class AdViewWeb extends StatelessWidget {
  const AdViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => DashboardWebViewWrapper(
        child: BlocBuilder<AdsBloc, AdsState>(
          builder: (context, state) {
            if (state.status is LoadingStatus) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.selectedAd == null) return Container();
            final selectedAd = state.selectedAd!;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (constraints.maxWidth > 1200)
                  Expanded(
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: context.appColors.adViewAdBackgroundColor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  (state.selectedAd?.mapImage ?? '').isNotEmpty
                                      ? Row(
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                                                child: AppImage(
                                                  imageUrl: (state.selectedAd?.mapImage ?? ''),
                                                  fit: BoxFit.fitWidth,
                                                  height: 160,
                                                  placeHolder: const SizedBox(
                                                      height: 50,
                                                      width: 50,
                                                      child: Align(
                                                        child: CircularProgressIndicator(),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Assets.images.raster.map.image(width: double.infinity),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 11, 20, 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ...selectedAd.routeDetails.map(
                                          (i) => AdViewWebRouteItem(
                                            item: i,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 54,
                                        ),
                                        if (selectedAd.chatId > 0)
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: context.appColors.adMessagesButtonBackgroundColor,
                                              elevation: 0,
                                            ),
                                            onPressed: () {
                                              final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
                                              context.read<AdsBloc>().add(AdsEvent.chatOfAdOpened(selectedAd.chatId));
                                              context.router.push(ChatRoute(chatId: selectedAd.chatId, ownId: ownId));
                                            },
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    color: context.appColors.adMessagesButtonIconBackgroundColor,
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                  child: Center(
                                                      child: selectedAd.hasUnreadMessages
                                                          ? Assets.images.vector.chatMessageNew.svg()
                                                          : Assets.images.vector.chatMessage.svg()),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'messages'.tr(),
                                                  style: context.appTextTheme.adMessagesButtonTextStyle,
                                                )
                                              ],
                                            ),
                                          ),
                                        const SizedBox(
                                          height: 26,
                                        ),
                                        if (selectedAd.brokersWhoResponsed > 0)
                                          Container(
                                            decoration: BoxDecoration(
                                              color: context.appColors.adViewWebAdBrokersAnswersCountBackgroundColor,
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'brokers_answered_to_this_ad'.plural(selectedAd.brokersWhoResponsed),
                                                  style: context.appTextTheme.adViewWebAdBrokersAnswersCountTextStyle,
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          const VerticalDivider(),
                        ],
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (constraints.maxWidth <= 1200) ...[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: context.appColors.adViewAdBackgroundColor),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  (state.selectedAd?.mapImage ?? '').isNotEmpty
                                      ? Expanded(
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
                                            child: AppImage(
                                              imageUrl: (state.selectedAd?.mapImage ?? ''),
                                              fit: BoxFit.fitHeight,
                                              height: 100,
                                              placeHolder: const SizedBox(
                                                height: 50,
                                                width: 50,
                                                child: Align(
                                                  child: CircularProgressIndicator(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Expanded(
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
                                            child: Assets.images.raster.map.image(
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          ...selectedAd.routeDetails.map((rd) => AdViewWebRouteItemCollapsed(item: rd)),
                                          const SizedBox(
                                            height: 24,
                                          ),
                                          if (selectedAd.chatId > 0)
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: context.appColors.adMessagesButtonBackgroundColor),
                                              onPressed: () {
                                                final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
                                                context.read<AdsBloc>().add(AdsEvent.chatOfAdOpened(selectedAd.chatId));
                                                context.router.push(ChatRoute(chatId: selectedAd.chatId, ownId: ownId));
                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: context.appColors.adMessagesButtonIconBackgroundColor,
                                                      borderRadius: BorderRadius.circular(50),
                                                    ),
                                                    child: Center(
                                                      child: selectedAd.hasUnreadMessages
                                                          ? Assets.images.vector.chatMessageNew.svg()
                                                          : Assets.images.vector.chatMessage.svg(),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'messages'.tr(),
                                                    style: context.appTextTheme.adMessagesButtonTextStyle,
                                                  )
                                                ],
                                              ),
                                            ),
                                          const SizedBox(
                                            height: 26,
                                          ),
                                          if (selectedAd.brokersWhoResponsed > 0)
                                            Container(
                                              decoration: BoxDecoration(
                                                color: context.appColors.adViewWebAdBrokersAnswersCountBackgroundColor,
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'brokers_answered_to_this_ad'
                                                        .plural(selectedAd.brokersWhoResponsed),
                                                    style: context.appTextTheme.adViewWebAdBrokersAnswersCountTextStyle,
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 54,
                          ),
                        ],
                        if (state.selectedAd?.status != AdStatus.canceled)
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 335),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 25)),
                                    onPressed: () {
                                      final ad = context.read<AdsBloc>().state.selectedAd;
                                      if (ad != null) {
                                        context.router.push(OfferEditorWrapperRoute(ad: ad));
                                      }
                                    },
                                    child: Text('send_prices'.tr()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        const SizedBox(
                          height: 23,
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
                                padding: const EdgeInsets.only(top: 100),
                                child: Center(child: Assets.images.raster.emptyFiller.image()),
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
                                      style: context.appTextTheme.adViewWebAdOffersTitleTextStyle,
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
                                        return AdViewWebOfferItem(
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
                      ],
                    )),
              ],
            );
          },
        ),
      ),
    );
  }
}
