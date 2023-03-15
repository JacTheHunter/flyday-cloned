import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/services/notifications/widgets/inner_push.dart';
import 'package:flyday_broker/features/ads/blocs/ads_bloc/ads_bloc.dart';
import 'package:flyday_broker/features/chat/blocs/chat_info_bloc/chat_info_bloc.dart';
import 'package:flyday_broker/features/chat/blocs/support_chat_unread_messages_count_bloc/support_chat_unread_messages_count_bloc.dart';
import 'package:flyday_broker/route/app_router.gr.dart';

import '../../../../features/offers/blocs/offers_bloc/offers_bloc.dart';
import '../../../../features/profile/blocs/profile_bloc/profile_bloc.dart';
import '../notifications_service.dart';

class NotificationListeners extends StatefulWidget {
  final Widget child;
  const NotificationListeners({super.key, required this.child});

  @override
  State<NotificationListeners> createState() => _NotificationListenersState();
}

class _NotificationListenersState extends State<NotificationListeners> {
  late final StreamSubscription<RemoteMessage> _onMessageSubscription;
  late final StreamSubscription<RemoteMessage> _onMessageOpenedAppSubscription;

  @override
  void initState() {
    final notificationsService = context.read<NotificationsService>();
    _onMessageSubscription = notificationsService.onMessage.listen(_onMessage);
    _onMessageOpenedAppSubscription = notificationsService.onMessageOpenedApp.listen(_onMessageTap);
    notificationsService.initialMessage.then((message) {
      if (message != null) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          _onMessageTap(message);
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _onMessageSubscription.cancel();
    _onMessageOpenedAppSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _onMessage(RemoteMessage message) {
    final type = message.data['type'];
    if (type is String) {
      switch (type) {
        case 'new_ad':
          context.read<AdsBloc>().add(const AdsEvent.fetchAds());
          final newAdId = int.tryParse(message.data['object_id']);
          if (newAdId != null) {
            showInnerPush(
              context,
              title: message.notification?.title,
              message: message.notification?.body,
              onTap: () => _onMessageTap(message),
            );
          }
          break;
        case 'new_chat_msg':
          final newMessageChatId = int.tryParse(message.data['object_id']);
          if (newMessageChatId != null) {
            if (context.router.current.name == ChatRoute.name &&
                context.read<ChatInfoBloc>().state.selectedChat?.id == newMessageChatId) {
            } else {
              context.read<AdsBloc>().add(AdsEvent.newMessageInChatOfAd(newMessageChatId));
              showInnerPush(
                context,
                title: message.notification?.title,
                message: message.notification?.body,
                onTap: () => _onMessageTap(message),
              );
            }
          }
          break;
        case 'new_support_service_msg':
          if (context.router.current.name == SupportChatRoute.name) {
          } else {
            context
                .read<SupportChatUnreadMessagesCountBloc>()
                .add(const SupportChatUnreadMessagesCountEvent.newMessage());
            showInnerPush(
              context,
              title: message.notification?.title,
              message: message.notification?.body,
              onTap: () => _onMessageTap(message),
            );
          }
          break;
        default:
          showInnerPush(context, title: message.notification?.title, message: message.notification?.body);
      }
    } else {
      showInnerPush(context, title: message.notification?.title, message: message.notification?.body);
    }
  }

  void _onMessageTap(RemoteMessage message) {
    final type = message.data['type'];
    if (type is String) {
      switch (type) {
        case 'new_ad':
          context.read<AdsBloc>().add(const AdsEvent.fetchAds());
          final newAdId = int.tryParse(message.data['object_id']);
          if (newAdId != null) {
            context.read<AdsBloc>().add(AdsEvent.selectAd(newAdId));
            context.read<OffersBloc>().add(OffersEvent.setAdId(newAdId));
            context.router.popUntilRoot();
            context.router.push(const AdRoute());
          }
          break;
        case 'new_chat_msg':
          final newMessageChatId = int.tryParse(message.data['object_id']);
          if (newMessageChatId != null) {
            context.router.popUntilRoot();

            context.read<AdsBloc>().add(AdsEvent.chatOfAdOpened(newMessageChatId));

            final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
            context.router.push(ChatRoute(chatId: newMessageChatId, ownId: ownId));
          }
          break;
        case 'new_support_service_msg':
          context.router.popUntilRoot();
          final ownId = context.read<ProfileBloc>().state.profile?.id ?? 0;
          context.router.push(SupportChatRoute(ownId: ownId));
          context
              .read<SupportChatUnreadMessagesCountBloc>()
              .add(const SupportChatUnreadMessagesCountEvent.chatOpened());
          break;
        default:
      }
    }
  }
}
