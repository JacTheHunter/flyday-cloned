import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';
import '../../features/ads/blocs/ads_bloc/ads_bloc.dart';
import '../../route/app_router.gr.dart';
import '../blocs/cubit/app_overlays_cubit.dart';
import 'dashboard_web_view_wrapper_navbar_item.dart';

class DashboardWebViewWrapperNavbarCollapsed extends StatelessWidget {
  final AdStatus activeAdsStatus;
  final int? adsSelectedStatusCount;
  const DashboardWebViewWrapperNavbarCollapsed({Key? key, required this.activeAdsStatus, this.adsSelectedStatusCount})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppOverlaysCubit, AppOverlayType>(
      builder: (context, type) {
        return PortalTarget(
          // 1. Declarative: Just provide `portalFoll
          anchor: const Aligned(
            follower: Alignment.topRight,
            target: Alignment.bottomRight,
          ),
          visible: type == AppOverlayType.collapsedMenu,
          portalFollower: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(12),
              child: IntrinsicWidth(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...AdStatus.values.map(
                      (status) => DashboardWebViewWrapperNavbarItem(
                        onPressed: () {
                          context.read<AdsBloc>().add(AdsEvent.updateAdStatus(status));
                          context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
                          context.router.navigate(const DashboardRoute());
                        },
                        hasBottomDivider: status != AdStatus.done,
                        child: Text(
                          status.name.tr(),
                          style: activeAdsStatus == status
                              ? context.appTextTheme.adsViewWebNavbarActiveTextStyle
                              : context.appTextTheme.adsViewWebNavbarTextStyle,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: DashboardWebViewWrapperNavbarItem(
            statusCount: adsSelectedStatusCount,
            isActive: true,
            child: Text(
              activeAdsStatus.name.tr(),
              style: context.appTextTheme.adsViewWebNavbarActiveTextStyle,
              maxLines: 1,
            ),
            onPressed: () {
              context.read<AppOverlaysCubit>().setType(AppOverlayType.collapsedMenu);
            },
          ),
        );
      },
    );
  }
}
