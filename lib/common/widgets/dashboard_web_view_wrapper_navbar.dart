import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/ads/blocs/ads_bloc/ads_bloc.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../features/ads/models/ad_status.dart';
import '../../features/chat/blocs/support_chat_unread_messages_count_bloc/support_chat_unread_messages_count_bloc.dart';
import '../../features/profile/blocs/profile_bloc/profile_bloc.dart';
import '../../features/profile/widgets/profile_button.dart';
import '../utils/check_state_status.dart';
import 'dashboard_web_view_wrapper_navbar_button.dart';
import 'dashboard_web_view_wrapper_navbar_collapsed.dart';
import 'dashboard_web_view_wrapper_navbar_item.dart';

class DashboardWebViewWrapperNavbar extends StatelessWidget {
  const DashboardWebViewWrapperNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdsBloc, AdsState>(
      builder: (context, state) {
        return Container(
          color: context.appColors.adsViewWebNavbarBackgroundColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(),
              Expanded(
                flex: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DashboardWebViewWrapperNavbarButton(
                      onPressed: () {
                        context.router.popUntilRoot();
                        // context.read<AuthenticationBloc>().add(const AuthenticationEvent.updateAuthenticationToken());
                      },
                      child: Assets.images.vector.logoWeb.svg(height: 40),
                    ),
                    const Flexible(
                      child: SizedBox(
                        width: 30,
                      ),
                    ),
                    if (context.sizeWidth > 950) ...[
                      ...AdStatus.values.map(
                        (status) => Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            DashboardWebViewWrapperNavbarItem(
                              isActive: state.adStatus == status,
                              statusCount: state.adStatus == status && state.adsSelectedStatusCount > 0
                                  ? state.adsSelectedStatusCount
                                  : null,
                              onPressed: () {
                                context.read<AdsBloc>().add(AdsEvent.updateAdStatus(status));
                                context.router.navigate(const DashboardRoute());
                              },
                              child: Row(
                                children: [
                                  Text(
                                    status.name.tr(),
                                    style: state.adStatus == status
                                        ? context.appTextTheme.adsViewWebNavbarActiveTextStyle
                                        : context.appTextTheme.adsViewWebNavbarTextStyle,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ] else
                      DashboardWebViewWrapperNavbarCollapsed(
                        activeAdsStatus: state.adStatus,
                        adsSelectedStatusCount: state.adsSelectedStatusCount > 0 ? state.adsSelectedStatusCount : null,
                      ),
                    const Flexible(
                      child: SizedBox(
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
              // DashboardWebViewWrapperNavbarButton(
              //   child: Row(
              //     children: [
              //       Assets.images.vector.messageSquare.svg(),
              //       if (context.sizeWidth > 950) ...[
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Text(
              //           'messages'.tr(),
              //           style: context.appTextTheme.adsViewWebNavbarTextStyle,
              //         )
              //       ],
              //     ],
              //   ),
              // ),
              BlocConsumer<SupportChatUnreadMessagesCountBloc, SupportChatUnreadMessagesCountState>(
                listener: (context, state) {
                  checkStateStatusForError(context, state.status);
                },
                builder: (context, state) {
                  // if (state.count < 1) return const SizedBox.shrink();
                  return DashboardWebViewWrapperNavbarButton(
                    hasIndicator: state.count > 0,
                    onPressed: () {
                      final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
                      context.router.push(SupportChatRoute(ownId: ownId));
                      context
                          .read<SupportChatUnreadMessagesCountBloc>()
                          .add(const SupportChatUnreadMessagesCountEvent.chatOpened());
                    },
                    child: Assets.images.vector.support.svg(),
                  );
                },
              ),
              // DashboardWebViewWrapperNavbarButton(
              //   child: const NotificationsButton(),
              //   onPressed: () {
              //     context.read<AppOverlaysCubit>().setType(AppOverlayType.notificationsMenu);
              //   },
              // ),
              const DashboardWebViewWrapperNavbarButton(
                child: ProfileButton(),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
