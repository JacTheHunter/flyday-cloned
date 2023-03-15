import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/services/notifications/notifications_service.dart';
import '../../../route/app_router.gr.dart';
import '../blocs/support_chat_messages_bloc/support_chat_messages_bloc.dart';

class SupportChatNotificationsListener extends StatefulWidget {
  final Widget child;
  const SupportChatNotificationsListener({super.key, required this.child});

  @override
  State<SupportChatNotificationsListener> createState() => _SupportChatNotificationsListenerState();
}

class _SupportChatNotificationsListenerState extends State<SupportChatNotificationsListener> {
  late final StreamSubscription<RemoteMessage> _onMessageSubscription;

  @override
  void initState() {
    final notificationsService = context.read<NotificationsService>();
    _onMessageSubscription = notificationsService.onMessage.listen(_onMessage);

    super.initState();
  }

  @override
  void dispose() {
    _onMessageSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _onMessage(RemoteMessage message) {
    final type = message.data['type'];
    if (type is String && type == 'new_support_service_msg' && context.router.current.name == SupportChatRoute.name) {
      context.read<SupportChatMessagesBloc>().add(const SupportChatMessagesEvent.fetch());
    }
  }
}
