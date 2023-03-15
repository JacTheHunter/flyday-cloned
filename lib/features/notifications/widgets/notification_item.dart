import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/date_formaters.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/notifications/models/notification.dart' as m;
import 'package:flyday_broker/features/notifications/models/notification_type.dart';

import '../../../common/blocs/cubit/app_overlays_cubit.dart';
import '../../../route/app_router.gr.dart';
import '../../ads/blocs/ads_bloc/ads_bloc.dart';
import '../../chat/blocs/support_chat_unread_messages_count_bloc/support_chat_unread_messages_count_bloc.dart';
import '../../offers/blocs/offers_bloc/offers_bloc.dart';
import '../../profile/blocs/profile_bloc/profile_bloc.dart';

class NotificationItem extends StatelessWidget {
  final m.Notification item;
  const NotificationItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (item.type) {
          case NotificationType.newAd:
            context.read<AdsBloc>().add(const AdsEvent.fetchAds());

            if (item.objectId != 0) {
              context.read<AdsBloc>().add(AdsEvent.selectAd(item.objectId));
              context.read<OffersBloc>().add(OffersEvent.setAdId(item.objectId));
              context.router.push(const AdRoute());
            }
            break;
          case NotificationType.newChatMessage:
            if (item.objectId != 0) {
              context.read<AdsBloc>().add(AdsEvent.chatOfAdOpened(item.objectId));

              final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
              context.router.push(ChatRoute(chatId: item.objectId, ownId: ownId));
            }
            break;
          case NotificationType.newSupportChatMessage:
            final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
            context.router.push(SupportChatRoute(ownId: ownId));
            context
                .read<SupportChatUnreadMessagesCountBloc>()
                .add(const SupportChatUnreadMessagesCountEvent.chatOpened());
            break;
          default:
        }
        if (context.read<AppOverlaysCubit>().state != AppOverlayType.none) {
          context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
        }
      },
      child: Ink(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    item.title,
                    style: context.appTextTheme.notificationItemTitleTextStyle,
                  ),
                ),
                Text(
                  DateFormaters.notificationDate(item.createdAtLocal),
                  style: context.appTextTheme.notificationItemDateTimeTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  item.description,
                  style: context.appTextTheme.notificationItemDescriptionTextStyle,
                ),
              ],
            ),
            const Divider(height: 25)
          ],
        ),
      ),
    );
  }
}
