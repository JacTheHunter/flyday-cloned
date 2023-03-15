import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/blocs/ads_bloc/ads_bloc.dart';
import 'package:flyday_broker/features/ads/models/ad.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';
import 'package:flyday_broker/features/offers/blocs/offers_bloc/offers_bloc.dart';
import 'package:flyday_broker/features/profile/blocs/profile_bloc/profile_bloc.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../../common/widgets/doted_divider.dart';
import 'ads_view_mobile_item_route.dart';

class AdsViewMobileItem extends StatelessWidget {
  final Ad item;
  const AdsViewMobileItem({Key? key, required this.item}) : super(key: key);

  TextStyle? _statusStyle(BuildContext context) {
    switch (item.status) {
      case AdStatus.neww:
        return context.appTextTheme.adsViewAdNewStatusTextStyle;
      case AdStatus.pending:
        return context.appTextTheme.adsViewAdPendingStatusTextStyle;
      case AdStatus.canceled:
        return context.appTextTheme.adsViewAdCanceledStatusTextStyle;
      case AdStatus.done:
        return context.appTextTheme.adsViewAdDoneStatusTextStyle;
      default:
    }
    return null;
  }

  Widget _statusIcon() {
    switch (item.status) {
      case AdStatus.neww:
        return Assets.images.vector.statusHot.svg();
      case AdStatus.pending:
        return Assets.images.vector.statusTimer.svg();
      case AdStatus.canceled:
        return Assets.images.vector.statusCancel.svg();
      case AdStatus.done:
        return Assets.images.vector.statusDone.svg();
      default:
        return Assets.images.vector.alert.svg();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.read<AdsBloc>().add(AdsEvent.selectAd(item.id));
          context.read<OffersBloc>().add(OffersEvent.setAdId(item.id));
          context.router.push(const AdRoute());
        },
        child: Ink(
          decoration: BoxDecoration(
            color: context.appColors.adsViewItemBackgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              ...item.routeDetails.map((rd) => AdsViewMobileItemRouteDetail(
                    item: rd,
                  )),
              const DotedDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        if (item.status != AdStatus.all) ...[
                          _statusIcon(),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            item.status.name.tr(),
                            style: _statusStyle(context),
                          ),
                        ],
                        const Spacer(),
                        if (item.chatId > 0)
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
                                context.read<AdsBloc>().add(AdsEvent.chatOfAdOpened(item.chatId));
                                context.router.push(ChatRoute(chatId: item.chatId, ownId: ownId));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                                  padding: const EdgeInsets.all(0)),
                              child: item.hasUnreadMessages
                                  ? Assets.images.vector.chatMessageNew.svg()
                                  : Assets.images.vector.chatMessage.svg(),
                            ),
                          ),
                      ],
                    ),
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
