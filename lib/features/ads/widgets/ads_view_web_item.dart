import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/models/ad.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../offers/blocs/offers_bloc/offers_bloc.dart';
import '../blocs/ads_bloc/ads_bloc.dart';
import '../models/ad_status.dart';
import 'ads_view_web_item_route.dart';

class AdsViewWebItem extends StatelessWidget {
  final Ad item;
  const AdsViewWebItem({Key? key, required this.item}) : super(key: key);

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
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.read<AdsBloc>().add(AdsEvent.selectAd(item.id));
          context.read<OffersBloc>().add(OffersEvent.setAdId(item.id));
          context.router.push(const AdRoute());
        },
        child: Ink(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
          decoration: BoxDecoration(
            color: context.appColors.adsViewItemBackgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
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
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              for (int i = 0; i < item.routeDetails.length; i++) ...[
                AdsViewWebItemRouteDetail(
                  item: item.routeDetails[i],
                ),
                if (i < item.routeDetails.length - 1)
                  const SizedBox(
                    height: 40,
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
