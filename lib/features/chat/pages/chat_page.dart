import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/authentication/blocs/bloc/authentication_bloc.dart';
import 'package:flyday_broker/features/chat/blocs/chat_info_bloc/chat_info_bloc.dart';
import 'package:flyday_broker/features/chat/blocs/chat_messages_bloc/chat_messages_bloc.dart';
import 'package:flyday_broker/features/chat/blocs/send_text_message_bloc/send_message_bloc.dart';
import 'package:flyday_broker/features/chat/data_sources/chat_socket_service.dart';

import '../../../common/utils/platform.dart';
import '../widgets/chat_view_mobile.dart';
import '../widgets/chat_view_web.dart';

class ChatPage extends StatelessWidget implements AutoRouteWrapper {
  final int chatId;
  final int ownId;
  const ChatPage({Key? key, required this.chatId, required this.ownId}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ChatSocketService(
              chatId: chatId, jwt: (context.read<AuthenticationBloc>().state as Authenticated).token.access),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ChatInfoBloc(
                  chatId: chatId,
                  repository: context.read(),
                )..add(const ChatInfoEvent.getChatInfo()),
              ),
              BlocProvider(
                create: (context) => ChatMessagesBloc(
                  chatId: chatId,
                  repository: context.read(),
                )..add(const ChatMessagesEvent.fetch()),
              ),
              BlocProvider(
                create: (context) => SendMessageBloc(
                  socketService: context.read(),
                  chatMessagesBloc: context.read(),
                  chatId: chatId,
                  ownId: ownId,
                ),
              ),
            ],
            child: this,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isWebMobileOrMobile) {
      return ChatViewMobile(
        ownId: ownId,
      );
    }
    return ChatViewWeb(
      ownId: ownId,
    );
  }
}
